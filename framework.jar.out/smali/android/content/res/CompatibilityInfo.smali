.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo; = null

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_ASPECT_WVGA:I = 0x10

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEEDS_SECONDARY_DPI:I = 0x20

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1

.field private static ctsChecked:Z

.field private static ctsDetected:Z


# instance fields
.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 350
    sput-boolean v1, Landroid/content/res/CompatibilityInfo;->ctsDetected:Z

    .line 352
    sput-boolean v1, Landroid/content/res/CompatibilityInfo;->ctsChecked:Z

    .line 731
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 344
    const/4 v0, 0x4

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 347
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"

    .prologue
    .line 336
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 338
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 339
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 340
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 341
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 6
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"

    .prologue
    .line 114
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZZ)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZZ)V
    .locals 12
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"
    .parameter "forceWVGA"

    .prologue
    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v5, 0x0

    .line 122
    .local v5, compatFlags:I
    const/4 v7, 0x0

    .line 123
    .local v7, needsSecondaryDpi:Z
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_SECONDARY:I

    sget v11, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq v10, v11, :cond_2

    .line 125
    iget-object v10, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 126
    iget-object v10, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.lge.launcher2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.lge.myapplications"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 128
    :cond_0
    const/4 v7, 0x1

    .line 133
    :cond_1
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/content/res/CompatibilityInfo;->checkIfCtsInstalled(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 134
    const/4 v7, 0x0

    .line 139
    :cond_2
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v10, :cond_3

    iget v10, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v10, :cond_3

    iget v10, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v10, :cond_e

    .line 142
    :cond_3
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v10, :cond_7

    iget v8, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 145
    .local v8, required:I
    :goto_0
    if-nez v8, :cond_4

    .line 146
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 148
    :cond_4
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v10, :cond_8

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 150
    .local v4, compat:I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 151
    move v4, v8

    .line 153
    :cond_5
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 155
    .local v6, largest:I
    const/16 v10, 0x140

    if-le v8, v10, :cond_9

    .line 162
    or-int/lit8 v5, v5, 0x4

    .line 181
    :cond_6
    :goto_2
    if-eqz p4, :cond_c

    if-eqz p5, :cond_c

    .line 182
    const/16 v10, 0xf0

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 183
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v10, v10

    const/high16 v11, 0x4370

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 185
    const/high16 v10, 0x3f80

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 186
    or-int/lit8 v10, v5, 0x1

    or-int/lit8 v10, v10, 0x10

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 333
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v8           #required:I
    :goto_3
    return-void

    .line 142
    :cond_7
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_0

    .restart local v8       #required:I
    :cond_8
    move v4, v8

    .line 148
    goto :goto_1

    .line 163
    .restart local v4       #compat:I
    .restart local v6       #largest:I
    :cond_9
    if-eqz v6, :cond_a

    if-le p3, v6, :cond_a

    .line 167
    or-int/lit8 v5, v5, 0xa

    goto :goto_2

    .line 168
    :cond_a
    if-lt v4, p3, :cond_b

    .line 171
    or-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 172
    :cond_b
    if-eqz p4, :cond_6

    .line 175
    or-int/lit8 v5, v5, 0x8

    goto :goto_2

    .line 193
    :cond_c
    if-eqz v7, :cond_d

    .line 194
    or-int/lit8 v5, v5, 0x20

    .line 195
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_SECONDARY:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 201
    :goto_4
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 202
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 332
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v8           #required:I
    :goto_5
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto :goto_3

    .line 197
    .restart local v4       #compat:I
    .restart local v6       #largest:I
    .restart local v8       #required:I
    :cond_d
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    goto :goto_4

    .line 209
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v8           #required:I
    :cond_e
    const/4 v0, 0x2

    .line 215
    .local v0, EXPANDABLE:I
    const/16 v1, 0x8

    .line 221
    .local v1, LARGE_SCREENS:I
    const/16 v2, 0x20

    .line 223
    .local v2, XLARGE_SCREENS:I
    const/4 v9, 0x0

    .line 227
    .local v9, sizeInfo:I
    const/4 v3, 0x0

    .line 229
    .local v3, anyResizeable:Z
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_f

    .line 230
    or-int/lit8 v9, v9, 0x8

    .line 231
    const/4 v3, 0x1

    .line 232
    if-nez p4, :cond_f

    .line 236
    or-int/lit8 v9, v9, 0x22

    .line 239
    :cond_f
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x8

    and-int/2addr v10, v11

    if-eqz v10, :cond_10

    .line 240
    const/4 v3, 0x1

    .line 241
    if-nez p4, :cond_10

    .line 242
    or-int/lit8 v9, v9, 0x22

    .line 245
    :cond_10
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_11

    .line 246
    const/4 v3, 0x1

    .line 247
    or-int/lit8 v9, v9, 0x2

    .line 250
    :cond_11
    if-eqz p4, :cond_12

    .line 255
    and-int/lit8 v9, v9, -0x3

    .line 258
    :cond_12
    or-int/lit8 v5, v5, 0x8

    .line 259
    and-int/lit8 v10, p2, 0xf

    packed-switch v10, :pswitch_data_0

    .line 280
    :cond_13
    :goto_6
    const/high16 v10, 0x1000

    and-int/2addr v10, p2

    if-eqz v10, :cond_18

    .line 281
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_17

    .line 282
    and-int/lit8 v5, v5, -0x9

    .line 291
    :cond_14
    :goto_7
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x2000

    if-eqz v10, :cond_1b

    .line 295
    if-eqz p4, :cond_19

    if-eqz p5, :cond_19

    .line 296
    const/16 v10, 0xf0

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 297
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v10, v10

    const/high16 v11, 0x4370

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 299
    const/high16 v10, 0x3f80

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 300
    or-int/lit8 v10, v5, 0x1

    or-int/lit8 v10, v10, 0x10

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto/16 :goto_3

    .line 261
    :pswitch_0
    and-int/lit8 v10, v9, 0x20

    if-eqz v10, :cond_15

    .line 262
    and-int/lit8 v5, v5, -0x9

    .line 264
    :cond_15
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x8

    and-int/2addr v10, v11

    if-eqz v10, :cond_13

    .line 265
    or-int/lit8 v5, v5, 0x4

    goto :goto_6

    .line 269
    :pswitch_1
    const-string/jumbo v10, "vu3"

    const-string/jumbo v11, "ro.product.device"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 270
    and-int/lit8 v10, v9, 0x8

    if-eqz v10, :cond_16

    .line 271
    and-int/lit8 v5, v5, -0x9

    .line 273
    :cond_16
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_13

    .line 274
    or-int/lit8 v5, v5, 0x4

    goto :goto_6

    .line 283
    :cond_17
    if-nez v3, :cond_14

    .line 284
    or-int/lit8 v5, v5, 0x2

    goto :goto_7

    .line 287
    :cond_18
    and-int/lit8 v5, v5, -0x9

    .line 288
    or-int/lit8 v5, v5, 0x4

    goto :goto_7

    .line 306
    :cond_19
    if-eqz v7, :cond_1a

    .line 307
    or-int/lit8 v5, v5, 0x20

    .line 308
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_SECONDARY:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 313
    :goto_8
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 314
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto/16 :goto_5

    .line 310
    :cond_1a
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    goto :goto_8

    .line 319
    :cond_1b
    if-eqz p4, :cond_1c

    if-eqz p5, :cond_1c

    .line 320
    or-int/lit8 v5, v5, 0x18

    .line 324
    :cond_1c
    const/16 v10, 0xa0

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 325
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v10, v10

    const/high16 v11, 0x4320

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 327
    const/high16 v10, 0x3f80

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 328
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 742
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 747
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static checkIfCtsInstalled(I)Z
    .locals 5
    .parameter "userId"

    .prologue
    const/4 v2, 0x1

    .line 355
    sget-boolean v3, Landroid/content/res/CompatibilityInfo;->ctsChecked:Z

    if-eqz v3, :cond_0

    .line 356
    sget-boolean v2, Landroid/content/res/CompatibilityInfo;->ctsDetected:Z

    .line 369
    :goto_0
    return v2

    .line 359
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 360
    .local v1, pm:Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_1

    const-string v3, "android.tests.devicesetup"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 361
    const/4 v3, 0x1

    sput-boolean v3, Landroid/content/res/CompatibilityInfo;->ctsDetected:Z

    .line 362
    const/4 v3, 0x1

    sput-boolean v3, Landroid/content/res/CompatibilityInfo;->ctsChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    .end local v1           #pm:Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 1
    .parameter "dm"
    .parameter "outDm"

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;Z)F

    move-result v0

    return v0
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;Z)F
    .locals 14
    .parameter "dm"
    .parameter "outDm"
    .parameter "isWvga"

    .prologue
    .line 625
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 626
    .local v11, width:I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 628
    .local v1, height:I
    if-ge v11, v1, :cond_4

    .line 629
    move v9, v11

    .line 630
    .local v9, shortSize:I
    move v2, v1

    .line 635
    .local v2, longSize:I
    :goto_0
    const/high16 v12, 0x43a0

    iget v13, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 636
    .local v5, newShortSize:I
    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    .line 637
    .local v0, aspect:F
    const v12, 0x3fe3bbbc

    cmpl-float v12, v0, v12

    if-lez v12, :cond_0

    .line 638
    const v0, 0x3fe3bbbc

    .line 641
    :cond_0
    if-eqz p2, :cond_1

    .line 642
    const v0, 0x3fd55555

    .line 645
    :cond_1
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v4, v12

    .line 647
    .local v4, newLongSize:I
    if-ge v11, v1, :cond_5

    .line 648
    move v6, v5

    .line 649
    .local v6, newWidth:I
    move v3, v4

    .line 655
    .local v3, newHeight:I
    :goto_1
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    .line 656
    .local v10, sw:F
    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 657
    .local v8, sh:F
    cmpg-float v12, v10, v8

    if-gez v12, :cond_6

    move v7, v10

    .line 658
    .local v7, scale:F
    :goto_2
    const/high16 v12, 0x3f80

    cmpg-float v12, v7, v12

    if-gez v12, :cond_2

    if-nez p2, :cond_2

    .line 659
    const/high16 v7, 0x3f80

    .line 662
    :cond_2
    if-eqz p1, :cond_3

    .line 663
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 664
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 667
    :cond_3
    return v7

    .line 632
    .end local v0           #aspect:F
    .end local v2           #longSize:I
    .end local v3           #newHeight:I
    .end local v4           #newLongSize:I
    .end local v5           #newShortSize:I
    .end local v6           #newWidth:I
    .end local v7           #scale:F
    .end local v8           #sh:F
    .end local v9           #shortSize:I
    .end local v10           #sw:F
    :cond_4
    move v9, v1

    .line 633
    .restart local v9       #shortSize:I
    move v2, v11

    .restart local v2       #longSize:I
    goto :goto_0

    .line 651
    .restart local v0       #aspect:F
    .restart local v4       #newLongSize:I
    .restart local v5       #newShortSize:I
    :cond_5
    move v6, v4

    .line 652
    .restart local v6       #newWidth:I
    move v3, v5

    .restart local v3       #newHeight:I
    goto :goto_1

    .restart local v8       #sh:F
    .restart local v10       #sw:F
    :cond_6
    move v7, v8

    .line 657
    goto :goto_2
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 3
    .parameter "displayDensity"
    .parameter "inoutConfig"

    .prologue
    .line 587
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 594
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 595
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 596
    iget v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 598
    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 599
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 601
    .local v0, invertedRatio:F
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 605
    .end local v0           #invertedRatio:F
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->needsSecondaryDpi()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_SECONDARY:I

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 609
    :cond_2
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .parameter "inoutDm"

    .prologue
    const/high16 v2, 0x3f00

    .line 555
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 558
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->requiresWvgaAspect()Z

    move-result v1

    invoke-static {p1, p1, v1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;Z)F

    .line 565
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 567
    .local v0, invertedRatio:F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 568
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 569
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 570
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 571
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 572
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 573
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 577
    .end local v0           #invertedRatio:F
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->needsSecondaryDpi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_SECONDARY:I

    int-to-float v1, v1

    const/high16 v2, 0x4320

    div-float/2addr v1, v2

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 579
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_SECONDARY:I

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 580
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 584
    :cond_1
    return-void

    .line 561
    :cond_2
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 562
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 673
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 674
    .local v2, oc:Landroid/content/res/CompatibilityInfo;
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v4, v5, :cond_1

    .line 680
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :cond_0
    :goto_0
    return v3

    .line 675
    .restart local v2       #oc:Landroid/content/res/CompatibilityInfo;
    :cond_1
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-ne v4, v5, :cond_0

    .line 676
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 677
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 678
    const/4 v3, 0x1

    goto :goto_0

    .line 679
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v1

    .line 680
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 710
    const/16 v0, 0x11

    .line 711
    .local v0, result:I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 712
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 713
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 714
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 715
    return v0
.end method

.method public isScalingRequired()Z
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsSecondaryDpi()Z
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public neverSupportsScreen()Z
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresWvgaAspect()Z
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsScreen()Z
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 687
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 693
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 696
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 699
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 702
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 725
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 728
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 729
    return-void
.end method
