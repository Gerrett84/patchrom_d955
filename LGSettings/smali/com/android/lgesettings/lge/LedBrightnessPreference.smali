.class public Lcom/android/lgesettings/lge/LedBrightnessPreference;
.super Lcom/android/lgesettings/lge/LedSeekBarPreference;
.source "LedBrightnessPreference.java"


# instance fields
.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mBrightnessPercentView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

.field private mOldBrightness:I

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field mServiceContext:Lcom/lge/systemservice/core/LGContext;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mtempView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/lge/LedSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mScreenBrightnessDim:I

    .line 56
    new-instance v0, Lcom/android/lgesettings/lge/LedBrightnessPreference$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference$1;-><init>(Lcom/android/lgesettings/lge/LedBrightnessPreference;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/android/lgesettings/lge/LedBrightnessPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/lge/LedBrightnessPreference$2;-><init>(Lcom/android/lgesettings/lge/LedBrightnessPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/LedBrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method private getBrightness(I)I
    .locals 5
    .parameter "defaultValue"

    .prologue
    .line 152
    move v0, p1

    .line 153
    .local v0, brightness:I
    const-string v2, "ro.lge.led_default_brightness"

    const/16 v3, 0xff

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 154
    .local v1, sp_led_def_brightness:I
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_brightness"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 156
    const-string v2, "LedBrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBrightness() : Brightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/lge/systemservice/core/LGContextImpl;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContextImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    .line 91
    iget-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mServiceContext:Lcom/lge/systemservice/core/LGContext;

    sget-object v1, Lcom/lge/systemservice/core/LGContext$ServiceList;->EMOTIONALLED_SERVICE:Lcom/lge/systemservice/core/LGContext$ServiceList;

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLegacyService(Lcom/lge/systemservice/core/LGContext$ServiceList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    iput-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    .line 94
    :cond_0
    iget v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->setMax(I)V

    .line 95
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mOldBrightness:I

    .line 96
    iget v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mOldBrightness:I

    iget v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->setProgress(I)V

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/lgesettings/lge/LedBrightnessPreference$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference$3;-><init>(Lcom/android/lgesettings/lge/LedBrightnessPreference;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 121
    return-void

    .line 97
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
    .end array-data
.end method

.method private onBrightnessChanged()V
    .locals 6

    .prologue
    .line 233
    const/16 v3, 0xff

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getBrightness(I)I

    move-result v0

    .line 234
    .local v0, brightness:I
    iget v3, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mScreenBrightnessDim:I

    sub-int v2, v0, v3

    .line 235
    .local v2, prog:I
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->onResume()V

    .line 236
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v2, 0x64

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getMax()I

    move-result v5

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, percent:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mBrightnessPercentView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mBrightnessPercentView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_0
    return-void
.end method

.method private sendStoreMsg(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    const/4 v2, 0x1

    .line 178
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 180
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 184
    return-void
.end method

.method private setBrightness(IZ)V
    .locals 4
    .parameter "brightness"
    .parameter "force"

    .prologue
    .line 161
    move v0, p1

    .line 162
    .local v0, temp:I
    const-string v1, "LedBrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBrightness() : Brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    invoke-virtual {v1, p1}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->setBrightness(I)V

    .line 175
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 126
    iput-object p1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mtempView:Landroid/view/View;

    .line 127
    const v1, 0x7f0a0180

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 128
    const v1, 0x7f0a0139

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mBrightnessPercentView:Landroid/widget/TextView;

    .line 131
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mOldBrightness:I

    iget v3, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getMax()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, percent:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mBrightnessPercentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 189
    move v1, p2

    .line 190
    .local v1, prog:I
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 191
    iget v2, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->setBrightness(IZ)V

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x64

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getMax()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, percent:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mBrightnessPercentView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mBrightnessPercentView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_0
    iget v2, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->sendStoreMsg(I)V

    .line 198
    .end local v0           #percent:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mtempView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mOldBrightness:I

    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mtempView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 149
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .parameter "seekBar"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    const-string v1, "LedBrightnessPreference"

    const-string v2, "onStartTrackingTouch()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 209
    :goto_0
    new-instance v0, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;

    invoke-direct {v0}, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;-><init>()V

    .line 210
    .local v0, record:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;
    iput v4, v0, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->priority:I

    .line 211
    iput v4, v0, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    .line 212
    iput v5, v0, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->flags:I

    .line 213
    const v1, 0xea60

    iput v1, v0, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->onMS:I

    .line 214
    const/16 v1, 0x32

    iput v1, v0, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->offMS:I

    .line 215
    const v1, -0xff0100

    iput v1, v0, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->color:I

    .line 216
    iput-boolean v5, v0, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->mExceptional:Z

    .line 217
    iput v4, v0, Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;->patternId:I

    .line 218
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v0}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->start(Ljava/lang/String;ILcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;)V

    .line 219
    sput v6, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->shareFunction:I

    .line 220
    return-void

    .line 206
    .end local v0           #record:Lcom/lge/systemservice/core/emotionalledmanager/LGLedRecord;
    :cond_0
    const-string v1, "hong"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFunction(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->shareFunction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mLedManager:Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/lgesettings/lge/EmotionalLEDEffect;->shareFunction:I

    invoke-virtual {v1, v2, v3}, Lcom/lge/systemservice/core/emotionalledmanager/EmotionalLedManager;->stop(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 224
    const-string v0, "LedBrightnessPreference"

    const-string v1, "onStopTrackingTouch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 227
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "led_brightness"

    iget-object v2, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/lgesettings/lge/LedBrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    return-void
.end method
