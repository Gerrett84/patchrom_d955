.class public Lcom/lge/cliptray/CliptrayCuePopupWindow;
.super Ljava/lang/Object;
.source "CliptrayCuePopupWindow.java"


# static fields
.field private static final CUE_HEIGHT_DP:I = 0x31

.field private static final CUE_WIDTH_DP:I = 0x2c


# instance fields
.field private mClipManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

.field private mContext:Landroid/content/Context;

.field private mCueBtn:Landroid/widget/ImageView;

.field private mCuePopupWindow:Landroid/widget/PopupWindow;

.field private mIsEditableText:Z

.field private mRes:Landroid/content/res/Resources;

.field private mShowSoftInputOnFocus:Z

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/loader/cliptray/ICliptrayManagerLoader;)V
    .locals 4
    .parameter "context"
    .parameter "clipmanager"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCueBtn:Landroid/widget/ImageView;

    .line 24
    iput-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mTextView:Landroid/widget/TextView;

    .line 27
    iput-boolean v2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mShowSoftInputOnFocus:Z

    .line 28
    iput-boolean v2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mIsEditableText:Z

    .line 31
    iput-object p1, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mContext:Landroid/content/Context;

    .line 32
    iget-object v2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mRes:Landroid/content/res/Resources;

    .line 33
    iput-object p2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mClipManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    .line 35
    iget-object v2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 36
    .local v1, cueWidth:I
    iget-object v2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 38
    .local v0, cueHeight:I
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCueBtn:Landroid/widget/ImageView;

    .line 39
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCueBtn:Landroid/widget/ImageView;

    invoke-direct {v2, v3, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCuePopupWindow:Landroid/widget/PopupWindow;

    .line 40
    iget-object v2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCueBtn:Landroid/widget/ImageView;

    const v3, 0x20201a0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object v2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCueBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/lge/cliptray/CliptrayCuePopupWindow$1;

    invoke-direct {v3, p0}, Lcom/lge/cliptray/CliptrayCuePopupWindow$1;-><init>(Lcom/lge/cliptray/CliptrayCuePopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mClipManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mShowSoftInputOnFocus:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mIsEditableText:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lge/cliptray/CliptrayCuePopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCuePopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public hideCliptrayCuePopupWindow()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCuePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 107
    return-void
.end method

.method public isOpenCueShowing()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCuePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public showCliptrayCuePopupWindow(Landroid/view/View;)V
    .locals 6
    .parameter "parent"

    .prologue
    .line 63
    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mClipManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mClipManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    invoke-interface {v3}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 65
    .local v2, wm:Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, cliptrayHeight:I
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_1

    .line 70
    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mRes:Landroid/content/res/Resources;

    const v4, 0x20d004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 75
    :goto_0
    if-lez v0, :cond_0

    .line 76
    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCuePopupWindow:Landroid/widget/PopupWindow;

    const/16 v4, 0x55

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 79
    .end local v0           #cliptrayHeight:I
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 72
    .restart local v0       #cliptrayHeight:I
    .restart local v1       #metrics:Landroid/util/DisplayMetrics;
    .restart local v2       #wm:Landroid/view/WindowManager;
    :cond_1
    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mRes:Landroid/content/res/Resources;

    const v4, 0x20d004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public showCliptrayCuePopupWindow(Landroid/widget/TextView;ZZ)V
    .locals 7
    .parameter "txt"
    .parameter "showSoftInputOnFocus"
    .parameter "editableText"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mTextView:Landroid/widget/TextView;

    .line 83
    iput-boolean p2, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mShowSoftInputOnFocus:Z

    .line 84
    iput-boolean p3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mIsEditableText:Z

    .line 87
    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mClipManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mClipManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    invoke-interface {v3}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 89
    .local v2, wm:Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, cliptrayHeight:I
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_1

    .line 94
    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mRes:Landroid/content/res/Resources;

    const v4, 0x20d004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 99
    :goto_0
    if-lez v0, :cond_0

    .line 100
    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mCuePopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x55

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 103
    .end local v0           #cliptrayHeight:I
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 96
    .restart local v0       #cliptrayHeight:I
    .restart local v1       #metrics:Landroid/util/DisplayMetrics;
    .restart local v2       #wm:Landroid/view/WindowManager;
    :cond_1
    iget-object v3, p0, Lcom/lge/cliptray/CliptrayCuePopupWindow;->mRes:Landroid/content/res/Resources;

    const v4, 0x20d004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method
