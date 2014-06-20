.class public Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;
.super Landroid/widget/FrameLayout;
.source "PointTouchUnlockFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final BUTTON_DRAWING_STATE_BLINK:I = 0x1

.field private static final BUTTON_DRAWING_STATE_IDLE:I = 0x0

.field private static final BUTTON_DRAWING_STATE_SHINING:I = 0x2

.field private static final VIBRATE_LONG:J = 0x28L

.field private static final VIBRATE_SHORT:J = 0x1eL


# instance fields
.field private DEBUG_ON:Z

.field private TAG:Ljava/lang/String;

.field private mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mBlinkingField:Landroid/widget/ImageView;

.field private mButtonDrawingState:I

.field private mFlashTap:Landroid/widget/ImageView;

.field private mIsButtonPressed:Z

.field private mIsUnlocked:Z

.field private mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;

.field private mPadLock:Landroid/widget/ImageView;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->DEBUG_ON:Z

    .line 31
    new-instance v0, Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    .line 33
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    .line 34
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mFlashTap:Landroid/widget/ImageView;

    .line 35
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 36
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mButtonDrawingState:I

    .line 37
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsButtonPressed:Z

    .line 38
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;

    .line 39
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsUnlocked:Z

    .line 40
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mVibrator:Landroid/os/Vibrator;

    .line 41
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPowerManager:Landroid/os/PowerManager;

    .line 47
    const-string v0, "PointTouchUnlockFrame"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 49
    const-string v0, "PointTouchUnlockFrame"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private isButtonPressed(FF)Z
    .locals 4
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 119
    const-string v2, "isButtonPressed"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, pressed:Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 124
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 125
    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 129
    :cond_0
    const-string v2, "isButtonPressed"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 130
    return v0
.end method

.method private onButtonPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 253
    const-string v0, "onButtonPressed"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 255
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsButtonPressed:Z

    .line 256
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->stopButtonBlink()V

    .line 257
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->setButtonShining(Z)V

    .line 258
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->vibrate(J)V

    .line 259
    const-string v0, "onButtonPressed"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private onButtonReleased(Z)V
    .locals 2
    .parameter "haspressed"

    .prologue
    const/4 v1, 0x0

    .line 263
    const-string v0, "onButtonReleased"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 265
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsButtonPressed:Z

    .line 267
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->unLockScreen()V

    .line 274
    :goto_0
    const-string v0, "onButtonReleased"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 275
    return-void

    .line 270
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->setButtonShining(Z)V

    .line 271
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->startButtonBlink()V

    goto :goto_0
.end method

.method private setButtonDisabled()V
    .locals 2

    .prologue
    .line 242
    const-string v0, "setButtonDisabled"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 243
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mButtonDrawingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->stopButtonBlink()V

    .line 249
    :cond_0
    :goto_0
    const-string v0, "setButtonDisabled"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 250
    return-void

    .line 245
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mButtonDrawingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->setButtonShining(Z)V

    goto :goto_0
.end method

.method private setButtonShining(Z)V
    .locals 3
    .parameter "shining"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 220
    const-string v0, "setButtonShining"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mFlashTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mButtonDrawingState:I

    .line 238
    :goto_0
    const-string v0, "setButtonShining"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 239
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mFlashTap:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mButtonDrawingState:I

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.setButtonShining(): mBlinkingField is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startButtonBlink()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    const-string v0, "startButtonBlink"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPowerManager:Landroid/os/PowerManager;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eq v0, v3, :cond_1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPowerManager.isScreenOn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceLog(Ljava/lang/String;)V

    .line 165
    const-string v0, "startButtonBlink"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 171
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mButtonDrawingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 173
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->setButtonShining(Z)V

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    const v1, 0x204000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 190
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mButtonDrawingState:I

    .line 198
    :cond_4
    :goto_1
    const-string v0, "startButtonBlink"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.startButtonBlink(): mBlinkingField is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopButtonBlink()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "stopButtonBlink"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mButtonDrawingState:I

    .line 216
    :goto_0
    const-string v0, "stopButtonBlink"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 217
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.stopButtonBlink(): mBlinkAnimation is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.stopButtonBlink(): mBlinkingField is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private traceIn(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   <<<<< IN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceLog(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method private traceLog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->DEBUG_ON:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointTouchUnlockFrame."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    return-void
.end method

.method private traceOut(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   >>>>> OUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceLog(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private unLockScreen()V
    .locals 2

    .prologue
    .line 278
    const-string v0, "unLockScreen"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    const v1, 0x2020184

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsUnlocked:Z

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;->onScreenTimeOutExtended()V

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;->onUnlocked()V

    .line 295
    :goto_1
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->vibrate(J)V

    .line 297
    const-string v0, "unLockScreen"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 298
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.unLockScreen(): mPadLock is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.unLockScreen(): mOnTriggerListener is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mVibrator:Landroid/os/Vibrator;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public initFrame()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "initFrame"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 136
    const v0, 0x20e0081

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    .line 137
    const v0, 0x20e0080

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    .line 138
    const v0, 0x20e007f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mFlashTap:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mFlashTap:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    const v1, 0x2020183

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsUnlocked:Z

    .line 146
    const-string v0, "initFrame"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 323
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->setButtonDisabled()V

    .line 325
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 312
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    const v1, 0x2020183

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsUnlocked:Z

    .line 317
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->startButtonBlink()V

    .line 319
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 76
    const-string v4, "onTouchEvent"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, bret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 81
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 82
    .local v2, positionX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 84
    .local v3, positionY:F
    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 113
    :goto_0
    const-string v4, "onTouchEvent"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 114
    return v1

    .line 86
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsUnlocked:Z

    if-nez v4, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->onButtonPressed()V

    .line 89
    :cond_0
    const/4 v1, 0x1

    .line 90
    goto :goto_0

    .line 93
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsButtonPressed:Z

    if-ne v4, v5, :cond_1

    .line 94
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->onButtonReleased(Z)V

    .line 96
    :cond_1
    const/4 v1, 0x1

    .line 97
    goto :goto_0

    .line 100
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsButtonPressed:Z

    if-ne v4, v5, :cond_2

    .line 101
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->isButtonPressed(FF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 102
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->onButtonReleased(Z)V

    .line 105
    :cond_2
    const/4 v1, 0x1

    .line 106
    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    const-string v0, "onWindowFocusChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 58
    if-ne p1, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    const v1, 0x2020183

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsUnlocked:Z

    .line 63
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->startButtonBlink()V

    .line 71
    :goto_0
    const-string v0, "onWindowFocusChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 72
    return-void

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mIsButtonPressed:Z

    if-ne v0, v1, :cond_2

    .line 66
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->onButtonReleased(Z)V

    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->setButtonDisabled()V

    goto :goto_0
.end method

.method public setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 150
    const-string v0, "setOnTriggerListener"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame$OnTriggerListener;

    .line 154
    const-string v0, "setOnTriggerListener"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 155
    return-void
.end method
