.class public Lcom/lge/camera/components/ShutterButton;
.super Lcom/lge/camera/components/RotateImageButton;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;,
        Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private isShutterButtonFocusEnable:Z

.field private isShutterButtonReleaseImmediately:Z

.field private mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

.field private mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

.field private mOldPressed:Z

.field private mShutterButtonClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    .line 56
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    .line 59
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    .line 56
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    .line 64
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    .line 56
    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    .line 69
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/lge/camera/components/RotateImageButton;->drawableStateChanged()V

    .line 86
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isPressed()Z

    move-result v0

    .line 90
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 91
    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mOldPressed:Z

    .line 92
    if-nez v0, :cond_2

    .line 114
    iget-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    if-eqz v1, :cond_1

    .line 115
    invoke-direct {p0, v0}, Lcom/lge/camera/components/ShutterButton;->callShutterButtonFocus(Z)V

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v1, Lcom/lge/camera/components/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/lge/camera/components/ShutterButton$1;-><init>(Lcom/lge/camera/components/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ShutterButton;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0, v0}, Lcom/lge/camera/components/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public isShutterButtonClicked()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    return v0
.end method

.method public isShutterButtonFocusEnable()Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportShutterButtonBurst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    invoke-interface {v0, p0}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;->onShutterButtonLongPressed(Lcom/lge/camera/components/ShutterButton;)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/lge/camera/components/RotateImageButton;->performClick()Z

    move-result v0

    .line 146
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 148
    iget-object v1, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 150
    :cond_0
    return v0
.end method

.method public performFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 160
    :cond_0
    return-void
.end method

.method public setOnShutterButtonListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    .line 74
    return-void
.end method

.method public setOnShutterButtonLongPressListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    .line 78
    return-void
.end method

.method public setShutterButtonFocusEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    .line 179
    return-void
.end method

.method public setShutterButtonReleaseImmediately(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonReleaseImmediately:Z

    .line 182
    return-void
.end method

.method public unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    iput-object v2, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    .line 185
    iput-object v2, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->isShutterButtonFocusEnable:Z

    .line 187
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 188
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 190
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_1
    return-void
.end method
