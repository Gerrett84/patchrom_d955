.class public Lcom/android/lgesettings/DisplaySizeinfo;
.super Ljava/lang/Object;
.source "DisplaySizeinfo.java"


# instance fields
.field private mArgs1:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mMethod_Display_getRealMetrics:Ljava/lang/reflect/Method;

.field private mTempDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "_context"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mArgs1:[Ljava/lang/Object;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private getDefaultDisplay()Landroid/view/Display;
    .locals 4

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySizeinfo;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 119
    .local v1, wm:Landroid/view/WindowManager;
    if-nez v1, :cond_0

    .line 120
    const-string v2, "soosin"

    const-string v3, "failure : WindowManager cannot be obtained."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mTempDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v2, :cond_1

    .line 125
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mTempDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 127
    :cond_1
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 128
    .local v0, display:Landroid/view/Display;
    goto :goto_0
.end method

.method private final getHeightOfLcdInInches(Landroid/util/DisplayMetrics;)F
    .locals 2
    .parameter "dm"

    .prologue
    .line 163
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v1

    return v0
.end method

.method private final getRealMetricsInternal(Landroid/view/Display;Landroid/util/DisplayMetrics;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mMethod_Display_getRealMetrics:Ljava/lang/reflect/Method;

    .line 176
    if-nez v0, :cond_0

    .line 178
    :try_start_0
    const-class v0, Landroid/view/Display;

    const-string v3, "getRealMetrics"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/util/DisplayMetrics;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 179
    iput-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mMethod_Display_getRealMetrics:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mArgs1:[Ljava/lang/Object;

    aput-object p2, v3, v1

    .line 189
    :try_start_1
    iget-object v3, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mArgs1:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mArgs1:[Ljava/lang/Object;

    aput-object v7, v0, v1

    move v0, v2

    .line 197
    :goto_0
    return v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 182
    const-string v0, "soosin"

    const-string v2, "failure : Display.getRealMetrics(DisplayMetrics) method cannot be found."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 183
    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    const-string v0, "soosin"

    const-string v2, "failure : invocation failure."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mArgs1:[Ljava/lang/Object;

    aput-object v7, v0, v1

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mArgs1:[Ljava/lang/Object;

    aput-object v7, v2, v1

    throw v0
.end method

.method private final getWidthOfLcdInInches(Landroid/util/DisplayMetrics;)F
    .locals 2
    .parameter "dm"

    .prologue
    .line 167
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v1

    return v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mWindowManager:Landroid/view/WindowManager;

    .line 143
    :goto_0
    return-object v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 138
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mWindowManager:Landroid/view/WindowManager;

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method


# virtual methods
.method public final getRealMetrics()Landroid/util/DisplayMetrics;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/lgesettings/DisplaySizeinfo;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 81
    .local v0, display:Landroid/view/Display;
    if-nez v0, :cond_1

    .line 82
    const-string v3, "soosin"

    const-string v4, "failure : default Display cannot be obtained."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 92
    :cond_0
    :goto_0
    return-object v1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/DisplaySizeinfo;->mTempDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 88
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/DisplaySizeinfo;->getRealMetricsInternal(Landroid/view/Display;Landroid/util/DisplayMetrics;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    const-string v3, "soosin"

    const-string v4, "failure : getRealMetricsInternal() has been failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 90
    goto :goto_0
.end method

.method public getSquaredDiagonalLengthOfLcdInInches()F
    .locals 7

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/lgesettings/DisplaySizeinfo;->getRealMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 63
    .local v0, dm:Landroid/util/DisplayMetrics;
    if-nez v0, :cond_0

    .line 64
    const/4 v2, 0x0

    .line 75
    :goto_0
    return v2

    .line 69
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/lgesettings/DisplaySizeinfo;->getWidthOfLcdInInches(Landroid/util/DisplayMetrics;)F

    move-result v3

    .line 70
    .local v3, width:F
    invoke-direct {p0, v0}, Lcom/android/lgesettings/DisplaySizeinfo;->getHeightOfLcdInInches(Landroid/util/DisplayMetrics;)F

    move-result v1

    .line 72
    .local v1, height:F
    const-string v4, "displaysizeinfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "width :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v4, "displaysizeinfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "height :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    mul-float v4, v3, v3

    mul-float v5, v1, v1

    add-float v2, v4, v5

    .line 75
    .local v2, squaredDiagonalLength:F
    goto :goto_0
.end method
