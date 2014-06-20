.class public Lcom/lge/camera/util/ColorUtil;
.super Ljava/lang/Object;
.source "ColorUtil.java"


# static fields
.field private static DELTA_INDEX:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x65

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/util/ColorUtil;->DELTA_INDEX:[D

    return-void

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x84t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x94t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0xa4t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xa9t 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0xaet 0x3ft
        0xect 0x51t 0xb8t 0x1et 0x85t 0xebt 0xb1t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0xb4t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xb9t 0x3ft
        0x29t 0x5ct 0x8ft 0xc2t 0xf5t 0x28t 0xbct 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0xbet 0x3ft
        0xect 0x51t 0xb8t 0x1et 0x85t 0xebt 0xc1t 0x3ft
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0xc3t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0xc4t 0x3ft
        0xc3t 0xf5t 0x28t 0x5ct 0x8ft 0xc2t 0xc5t 0x3ft
        0xat 0xd7t 0xa3t 0x70t 0x3dt 0xat 0xc7t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xc9t 0x3ft
        0xe1t 0x7at 0x14t 0xaet 0x47t 0xe1t 0xcat 0x3ft
        0x29t 0x5ct 0x8ft 0xc2t 0xf5t 0x28t 0xcct 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0xcet 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xd0t 0x3ft
        0x48t 0xe1t 0x7at 0x14t 0xaet 0x47t 0xd1t 0x3ft
        0xect 0x51t 0xb8t 0x1et 0x85t 0xebt 0xd1t 0x3ft
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0xd3t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0xd4t 0x3ft
        0xc3t 0xf5t 0x28t 0x5ct 0x8ft 0xc2t 0xd5t 0x3ft
        0xat 0xd7t 0xa3t 0x70t 0x3dt 0xat 0xd7t 0x3ft
        0x52t 0xb8t 0x1et 0x85t 0xebt 0x51t 0xd8t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xd9t 0x3ft
        0xe1t 0x7at 0x14t 0xaet 0x47t 0xe1t 0xdat 0x3ft
        0x29t 0x5ct 0x8ft 0xc2t 0xf5t 0x28t 0xdct 0x3ft
        0x71t 0x3dt 0xat 0xd7t 0xa3t 0x70t 0xddt 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0xdet 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xe0t 0x3ft
        0xf6t 0x28t 0x5ct 0x8ft 0xc2t 0xf5t 0xe0t 0x3ft
        0xect 0x51t 0xb8t 0x1et 0x85t 0xebt 0xe1t 0x3ft
        0xe1t 0x7at 0x14t 0xaet 0x47t 0xe1t 0xe2t 0x3ft
        0xd7t 0xa3t 0x70t 0x3dt 0xat 0xd7t 0xe3t 0x3ft
        0xcdt 0xcct 0xcct 0xcct 0xcct 0xcct 0xe4t 0x3ft
        0xc3t 0xf5t 0x28t 0x5ct 0x8ft 0xc2t 0xe5t 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0xe6t 0x3ft
        0xaet 0x47t 0xe1t 0x7at 0x14t 0xaet 0xe7t 0x3ft
        0xa4t 0x70t 0x3dt 0xat 0xd7t 0xa3t 0xe8t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xe9t 0x3ft
        0x8ft 0xc2t 0xf5t 0x28t 0x5ct 0x8ft 0xeat 0x3ft
        0x85t 0xebt 0x51t 0xb8t 0x1et 0x85t 0xebt 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0xect 0x3ft
        0x71t 0x3dt 0xat 0xd7t 0xa3t 0x70t 0xedt 0x3ft
        0x66t 0x66t 0x66t 0x66t 0x66t 0x66t 0xeet 0x3ft
        0x5ct 0x8ft 0xc2t 0xf5t 0x28t 0x5ct 0xeft 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0xf6t 0x28t 0x5ct 0x8ft 0xc2t 0xf5t 0xf0t 0x3ft
        0xect 0x51t 0xb8t 0x1et 0x85t 0xebt 0xf1t 0x3ft
        0xe1t 0x7at 0x14t 0xaet 0x47t 0xe1t 0xf2t 0x3ft
        0xd7t 0xa3t 0x70t 0x3dt 0xat 0xd7t 0xf3t 0x3ft
        0xcdt 0xcct 0xcct 0xcct 0xcct 0xcct 0xf4t 0x3ft
        0xc3t 0xf5t 0x28t 0x5ct 0x8ft 0xc2t 0xf5t 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0xf6t 0x3ft
        0xaet 0x47t 0xe1t 0x7at 0x14t 0xaet 0xf7t 0x3ft
        0xa4t 0x70t 0x3dt 0xat 0xd7t 0xa3t 0xf8t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xf9t 0x3ft
        0x8ft 0xc2t 0xf5t 0x28t 0x5ct 0x8ft 0xfat 0x3ft
        0x85t 0xebt 0x51t 0xb8t 0x1et 0x85t 0xfbt 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0xfct 0x3ft
        0x71t 0x3dt 0xat 0xd7t 0xa3t 0x70t 0xfdt 0x3ft
        0x66t 0x66t 0x66t 0x66t 0x66t 0x66t 0xfet 0x3ft
        0x5ct 0x8ft 0xc2t 0xf5t 0x28t 0x5ct 0xfft 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x40t
        0xf6t 0x28t 0x5ct 0x8ft 0xc2t 0xf5t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x2t 0x40t
        0xf6t 0x28t 0x5ct 0x8ft 0xc2t 0xf5t 0x2t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x4t 0x40t
        0xf6t 0x28t 0x5ct 0x8ft 0xc2t 0xf5t 0x4t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x6t 0x40t
        0xf6t 0x28t 0x5ct 0x8ft 0xc2t 0xf5t 0x6t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x8t 0x40t
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0x9t 0x40t
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0xbt 0x40t
        0xcdt 0xcct 0xcct 0xcct 0xcct 0xcct 0xct 0x40t
        0x66t 0x66t 0x66t 0x66t 0x66t 0x66t 0xet 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x10t 0x40t
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x11t 0x40t
        0xcdt 0xcct 0xcct 0xcct 0xcct 0xcct 0x12t 0x40t
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0x13t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x14t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x16t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x18t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x1at 0x40t
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x1bt 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x1ct 0x40t
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x1dt 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x1et 0x40t
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x1ft 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x20t 0x40t
        0xcdt 0xcct 0xcct 0xcct 0xcct 0xcct 0x20t 0x40t
        0x66t 0x66t 0x66t 0x66t 0x66t 0x66t 0x21t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x22t 0x40t
        0xcdt 0xcct 0xcct 0xcct 0xcct 0xcct 0x22t 0x40t
        0x33t 0x33t 0x33t 0x33t 0x33t 0x33t 0x23t 0x40t
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0x23t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x24t 0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustBrightness(Landroid/graphics/ColorMatrix;F)V
    .locals 4
    .parameter "cm"
    .parameter "value"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 84
    const/high16 v1, 0x42c8

    invoke-static {p1, v1}, Lcom/lge/camera/util/ColorUtil;->cleanValue(FF)F

    move-result p1

    .line 85
    cmpl-float v1, p1, v2

    if-gtz v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    .line 86
    :cond_0
    const/16 v1, 0x19

    new-array v0, v1, [F

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p1, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput p1, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    const/16 v1, 0x14

    aput v2, v0, v1

    const/16 v1, 0x15

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v2, v0, v1

    const/16 v1, 0x18

    aput v3, v0, v1

    .line 94
    .local v0, mat:[F
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 96
    .end local v0           #mat:[F
    :cond_1
    return-void
.end method

.method public static adjustColor(IIII)Landroid/graphics/ColorFilter;
    .locals 2
    .parameter "brightness"
    .parameter "contrast"
    .parameter "saturation"
    .parameter "hue"

    .prologue
    .line 153
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 154
    .local v0, cm:Landroid/graphics/ColorMatrix;
    int-to-float v1, p3

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->adjustHue(Landroid/graphics/ColorMatrix;F)V

    .line 155
    invoke-static {v0, p1}, Lcom/lge/camera/util/ColorUtil;->adjustContrast(Landroid/graphics/ColorMatrix;I)V

    .line 156
    int-to-float v1, p0

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->adjustBrightness(Landroid/graphics/ColorMatrix;F)V

    .line 157
    int-to-float v1, p2

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->adjustSaturation(Landroid/graphics/ColorMatrix;F)V

    .line 159
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method public static adjustContrast(Landroid/graphics/ColorMatrix;I)V
    .locals 9
    .parameter "cm"
    .parameter "value"

    .prologue
    const/high16 v8, 0x3f80

    const/high16 v7, 0x3f00

    const/high16 v6, 0x42fe

    const/4 v5, 0x0

    .line 99
    int-to-float v2, p1

    const/high16 v3, 0x42c8

    invoke-static {v2, v3}, Lcom/lge/camera/util/ColorUtil;->cleanValue(FF)F

    move-result v2

    float-to-int p1, v2

    .line 100
    int-to-float v2, p1

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_0

    int-to-float v2, p1

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 102
    :cond_0
    if-gez p1, :cond_2

    .line 103
    div-int/lit8 v2, p1, 0x64

    mul-int/lit8 v2, v2, 0x7f

    add-int/lit8 v2, v2, 0x7f

    int-to-float v1, v2

    .line 116
    .local v1, x:F
    :goto_0
    const/16 v2, 0x19

    new-array v0, v2, [F

    const/4 v2, 0x0

    div-float v3, v1, v6

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v5, v0, v2

    const/4 v2, 0x2

    aput v5, v0, v2

    const/4 v2, 0x3

    aput v5, v0, v2

    const/4 v2, 0x4

    sub-float v3, v6, v1

    mul-float/2addr v3, v7

    aput v3, v0, v2

    const/4 v2, 0x5

    aput v5, v0, v2

    const/4 v2, 0x6

    div-float v3, v1, v6

    aput v3, v0, v2

    const/4 v2, 0x7

    aput v5, v0, v2

    const/16 v2, 0x8

    aput v5, v0, v2

    const/16 v2, 0x9

    sub-float v3, v6, v1

    mul-float/2addr v3, v7

    aput v3, v0, v2

    const/16 v2, 0xa

    aput v5, v0, v2

    const/16 v2, 0xb

    aput v5, v0, v2

    const/16 v2, 0xc

    div-float v3, v1, v6

    aput v3, v0, v2

    const/16 v2, 0xd

    aput v5, v0, v2

    const/16 v2, 0xe

    sub-float v3, v6, v1

    mul-float/2addr v3, v7

    aput v3, v0, v2

    const/16 v2, 0xf

    aput v5, v0, v2

    const/16 v2, 0x10

    aput v5, v0, v2

    const/16 v2, 0x11

    aput v5, v0, v2

    const/16 v2, 0x12

    aput v8, v0, v2

    const/16 v2, 0x13

    aput v5, v0, v2

    const/16 v2, 0x14

    aput v5, v0, v2

    const/16 v2, 0x15

    aput v5, v0, v2

    const/16 v2, 0x16

    aput v5, v0, v2

    const/16 v2, 0x17

    aput v5, v0, v2

    const/16 v2, 0x18

    aput v8, v0, v2

    .line 124
    .local v0, mat:[F
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 126
    .end local v0           #mat:[F
    .end local v1           #x:F
    :cond_1
    return-void

    .line 105
    :cond_2
    rem-int/lit8 v2, p1, 0x1

    int-to-float v1, v2

    .line 106
    .restart local v1       #x:F
    cmpg-float v2, v1, v5

    if-ltz v2, :cond_3

    cmpl-float v2, v1, v5

    if-lez v2, :cond_4

    .line 109
    :cond_3
    sget-object v2, Lcom/lge/camera/util/ColorUtil;->DELTA_INDEX:[D

    shl-int/lit8 v3, p1, 0x0

    aget-wide v2, v2, v3

    double-to-float v2, v2

    sub-float v3, v8, v1

    mul-float/2addr v2, v3

    sget-object v3, Lcom/lge/camera/util/ColorUtil;->DELTA_INDEX:[D

    shl-int/lit8 v4, p1, 0x0

    add-int/lit8 v4, v4, 0x1

    aget-wide v3, v3, v4

    double-to-float v3, v3

    mul-float/2addr v3, v1

    add-float v1, v2, v3

    .line 113
    :goto_1
    mul-float v2, v1, v6

    add-float v1, v2, v6

    goto/16 :goto_0

    .line 111
    :cond_4
    sget-object v2, Lcom/lge/camera/util/ColorUtil;->DELTA_INDEX:[D

    aget-wide v2, v2, p1

    double-to-float v1, v2

    goto :goto_1
.end method

.method public static adjustHue(Landroid/graphics/ColorMatrix;F)V
    .locals 11
    .parameter "cm"
    .parameter "value"

    .prologue
    const/high16 v7, 0x4334

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 61
    invoke-static {p1, v7}, Lcom/lge/camera/util/ColorUtil;->cleanValue(FF)F

    move-result v6

    div-float/2addr v6, v7

    const v7, 0x40490fdb

    mul-float p1, v6, v7

    .line 63
    cmpl-float v6, p1, v9

    if-gtz v6, :cond_0

    cmpg-float v6, p1, v9

    if-gez v6, :cond_1

    .line 64
    :cond_0
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 65
    .local v0, cosVal:F
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 66
    .local v5, sinVal:F
    const v3, 0x3e5a1cac

    .line 67
    .local v3, lumR:F
    const v2, 0x3f370a3d

    .line 68
    .local v2, lumG:F
    const v1, 0x3d9374bc

    .line 69
    .local v1, lumB:F
    const/16 v6, 0x19

    new-array v4, v6, [F

    const/4 v6, 0x0

    sub-float v7, v10, v3

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    neg-float v8, v3

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x1

    neg-float v7, v2

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    neg-float v8, v2

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x2

    neg-float v7, v1

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    sub-float v8, v10, v1

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x3

    aput v9, v4, v6

    const/4 v6, 0x4

    aput v9, v4, v6

    const/4 v6, 0x5

    neg-float v7, v3

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    const v8, 0x3e126e98

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x6

    sub-float v7, v10, v2

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    const v8, 0x3e0f5c29

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x7

    neg-float v7, v1

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    const v8, -0x416f1aa0

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0x8

    aput v9, v4, v6

    const/16 v6, 0x9

    aput v9, v4, v6

    const/16 v6, 0xa

    neg-float v7, v3

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    sub-float v8, v10, v3

    neg-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0xb

    neg-float v7, v2

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    mul-float v8, v5, v2

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0xc

    sub-float v7, v10, v1

    mul-float/2addr v7, v0

    add-float/2addr v7, v1

    mul-float v8, v5, v1

    add-float/2addr v7, v8

    aput v7, v4, v6

    const/16 v6, 0xd

    aput v9, v4, v6

    const/16 v6, 0xe

    aput v9, v4, v6

    const/16 v6, 0xf

    aput v9, v4, v6

    const/16 v6, 0x10

    aput v9, v4, v6

    const/16 v6, 0x11

    aput v9, v4, v6

    const/16 v6, 0x12

    aput v10, v4, v6

    const/16 v6, 0x13

    aput v9, v4, v6

    const/16 v6, 0x14

    aput v9, v4, v6

    const/16 v6, 0x15

    aput v9, v4, v6

    const/16 v6, 0x16

    aput v9, v4, v6

    const/16 v6, 0x17

    aput v9, v4, v6

    const/16 v6, 0x18

    aput v10, v4, v6

    .line 79
    .local v4, mat:[F
    new-instance v6, Landroid/graphics/ColorMatrix;

    invoke-direct {v6, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v6}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 81
    .end local v0           #cosVal:F
    .end local v1           #lumB:F
    .end local v2           #lumG:F
    .end local v3           #lumR:F
    .end local v4           #mat:[F
    .end local v5           #sinVal:F
    :cond_1
    return-void
.end method

.method public static adjustSaturation(Landroid/graphics/ColorMatrix;F)V
    .locals 9
    .parameter "cm"
    .parameter "value"

    .prologue
    const/high16 v6, 0x42c8

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 129
    invoke-static {p1, v6}, Lcom/lge/camera/util/ColorUtil;->cleanValue(FF)F

    move-result p1

    .line 130
    cmpl-float v5, p1, v7

    if-gtz v5, :cond_0

    cmpg-float v5, p1, v7

    if-gez v5, :cond_1

    .line 131
    :cond_0
    cmpl-float v5, p1, v7

    if-lez v5, :cond_2

    const/high16 v5, 0x4040

    mul-float/2addr v5, p1

    div-float/2addr v5, v6

    :goto_0
    add-float v4, v8, v5

    .line 132
    .local v4, x:F
    const v2, 0x3e9e00d2

    .line 133
    .local v2, lumR:F
    const v1, 0x3f1c01a3

    .line 134
    .local v1, lumG:F
    const v0, 0x3da7ef9e

    .line 136
    .local v0, lumB:F
    const/16 v5, 0x19

    new-array v3, v5, [F

    const/4 v5, 0x0

    sub-float v6, v8, v4

    mul-float/2addr v6, v2

    add-float/2addr v6, v4

    aput v6, v3, v5

    const/4 v5, 0x1

    sub-float v6, v8, v4

    mul-float/2addr v6, v1

    aput v6, v3, v5

    const/4 v5, 0x2

    sub-float v6, v8, v4

    mul-float/2addr v6, v0

    aput v6, v3, v5

    const/4 v5, 0x3

    aput v7, v3, v5

    const/4 v5, 0x4

    aput v7, v3, v5

    const/4 v5, 0x5

    sub-float v6, v8, v4

    mul-float/2addr v6, v2

    aput v6, v3, v5

    const/4 v5, 0x6

    sub-float v6, v8, v4

    mul-float/2addr v6, v1

    add-float/2addr v6, v4

    aput v6, v3, v5

    const/4 v5, 0x7

    sub-float v6, v8, v4

    mul-float/2addr v6, v0

    aput v6, v3, v5

    const/16 v5, 0x8

    aput v7, v3, v5

    const/16 v5, 0x9

    aput v7, v3, v5

    const/16 v5, 0xa

    sub-float v6, v8, v4

    mul-float/2addr v6, v2

    aput v6, v3, v5

    const/16 v5, 0xb

    sub-float v6, v8, v4

    mul-float/2addr v6, v1

    aput v6, v3, v5

    const/16 v5, 0xc

    sub-float v6, v8, v4

    mul-float/2addr v6, v0

    add-float/2addr v6, v4

    aput v6, v3, v5

    const/16 v5, 0xd

    aput v7, v3, v5

    const/16 v5, 0xe

    aput v7, v3, v5

    const/16 v5, 0xf

    aput v7, v3, v5

    const/16 v5, 0x10

    aput v7, v3, v5

    const/16 v5, 0x11

    aput v7, v3, v5

    const/16 v5, 0x12

    aput v8, v3, v5

    const/16 v5, 0x13

    aput v7, v3, v5

    const/16 v5, 0x14

    aput v7, v3, v5

    const/16 v5, 0x15

    aput v7, v3, v5

    const/16 v5, 0x16

    aput v7, v3, v5

    const/16 v5, 0x17

    aput v7, v3, v5

    const/16 v5, 0x18

    aput v8, v3, v5

    .line 144
    .local v3, mat:[F
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0, v5}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 146
    .end local v0           #lumB:F
    .end local v1           #lumG:F
    .end local v2           #lumR:F
    .end local v3           #mat:[F
    .end local v4           #x:F
    :cond_1
    return-void

    .line 131
    :cond_2
    div-float v5, p1, v6

    goto/16 :goto_0
.end method

.method protected static cleanValue(FF)F
    .locals 1
    .parameter "p_val"
    .parameter "p_limit"

    .prologue
    .line 149
    neg-float v0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static getBrightnessAndContrast(FF)Landroid/graphics/ColorMatrixColorFilter;
    .locals 4
    .parameter "brightness"
    .parameter "contrast"

    .prologue
    const/4 v3, 0x0

    .line 14
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 15
    .local v0, cm:Landroid/graphics/ColorMatrix;
    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p0, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput p1, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v3, v1, v2

    const/16 v2, 0x9

    aput p0, v1, v2

    const/16 v2, 0xa

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v3, v1, v2

    const/16 v2, 0xc

    aput p1, v1, v2

    const/16 v2, 0xd

    aput v3, v1, v2

    const/16 v2, 0xe

    aput p0, v1, v2

    const/16 v2, 0xf

    aput v3, v1, v2

    const/16 v2, 0x10

    aput v3, v1, v2

    const/16 v2, 0x11

    aput v3, v1, v2

    const/16 v2, 0x12

    aput p1, v1, v2

    const/16 v2, 0x13

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 21
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method public static getDimColor()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 25
    const/high16 v0, 0x4248

    const v1, 0x3f19999a

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->getBrightnessAndContrast(FF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static getDimColorExpand()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 33
    const/high16 v0, 0x428c

    const v1, 0x3e4ccccd

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->getBrightnessAndContrast(FF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static getEnteringQFLColor()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 37
    const/high16 v0, 0x4316

    const v1, 0x3f19999a

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->getBrightnessAndContrast(FF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public static getItemColor(I)I
    .locals 4
    .parameter "type"

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0xbe

    const/4 v0, -0x1

    const/high16 v1, -0x100

    .line 167
    packed-switch p0, :pswitch_data_0

    move v0, v1

    .line 196
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 169
    :pswitch_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 172
    goto :goto_0

    .line 175
    :pswitch_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 178
    goto :goto_0

    .line 181
    :pswitch_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 184
    :cond_1
    const v0, -0x777778

    goto :goto_0

    .line 190
    :pswitch_4
    const/16 v0, 0x33

    const/16 v1, 0x38

    const/16 v2, 0x3b

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 193
    :pswitch_5
    const/4 v0, 0x0

    const/16 v1, 0x4e

    const/16 v2, 0x60

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getQuickButtonDimColor()Landroid/graphics/ColorMatrixColorFilter;
    .locals 2

    .prologue
    .line 29
    const/high16 v0, -0x3de0

    const/high16 v1, 0x3f00

    invoke-static {v0, v1}, Lcom/lge/camera/util/ColorUtil;->getBrightnessAndContrast(FF)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSettingMenuDimColor()I
    .locals 4

    .prologue
    .line 163
    const/16 v0, 0xff

    const/16 v1, 0x33

    const/16 v2, 0x38

    const/16 v3, 0x3b

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method
