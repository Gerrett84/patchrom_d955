.class Lcom/lge/gesture/LgeGestureBasicUtil;
.super Ljava/lang/Object;
.source "LgeGestureBasicUtil.java"


# static fields
.field private static intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/gesture/LgeGestureBasicUtil;->intent:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method static broadcastIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "action"

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/lge/gesture/LgeGestureBasicUtil;->intent:Landroid/content/Intent;

    .line 33
    sget-object v0, Lcom/lge/gesture/LgeGestureBasicUtil;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    sget-object v0, Lcom/lge/gesture/LgeGestureBasicUtil;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method static calculateSlope(FFFF)F
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 16
    sub-float v0, p3, p1

    sub-float v1, p2, p0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method static getDistance(FFFF)F
    .locals 4
    .parameter "x1"
    .parameter "x2"
    .parameter "y1"
    .parameter "y2"

    .prologue
    .line 20
    sub-float v0, p0, p1

    .line 21
    .local v0, x:F
    sub-float v1, p2, p3

    .line 22
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method static getPixelPerMm(F)F
    .locals 5
    .parameter "dpi"

    .prologue
    .line 27
    float-to-double v1, p0

    const-wide v3, 0x4039666666666666L

    div-double/2addr v1, v3

    double-to-float v0, v1

    .line 28
    .local v0, mPixelPerMM:F
    return v0
.end method
