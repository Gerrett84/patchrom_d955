.class public Lcom/lge/gesture/LgeGestureFactory;
.super Ljava/lang/Object;
.source "LgeGestureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/gesture/LgeGestureFactory$GestureType;
    }
.end annotation


# static fields
.field public static final PALMCOVER:Lcom/lge/gesture/LgeGestureFactory$GestureType;

.field public static final PALMSWIPE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

.field public static final SLIDEASIDE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

.field public static final TILT:Lcom/lge/gesture/LgeGestureFactory$GestureType;

.field private static mPalmCover:Lcom/lge/gesture/LgeGesture;

.field private static mPalmSwipe:Lcom/lge/gesture/LgeGesture;

.field private static mSlideAside:Lcom/lge/gesture/LgeGesture;

.field private static mTilt:Lcom/lge/gesture/LgeGesture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->mSlideAside:Lcom/lge/gesture/LgeGesture;

    .line 8
    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->mPalmSwipe:Lcom/lge/gesture/LgeGesture;

    .line 9
    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->mPalmCover:Lcom/lge/gesture/LgeGesture;

    .line 10
    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->mTilt:Lcom/lge/gesture/LgeGesture;

    .line 18
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->SLIDEASIDE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->SLIDEASIDE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    .line 19
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->PALMSWIPE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->PALMSWIPE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    .line 20
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->PALMCOVER:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->PALMCOVER:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    .line 21
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->TILT:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->TILT:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/lge/gesture/LgeGestureFactory$GestureType;)Lcom/lge/gesture/LgeGesture;
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 24
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->SLIDEASIDE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    if-ne p1, v0, :cond_1

    .line 25
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mSlideAside:Lcom/lge/gesture/LgeGesture;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mSlideAside:Lcom/lge/gesture/LgeGesture;

    .line 49
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/lge/gesture/LGSlideAsideImpl;

    invoke-direct {v0, p0}, Lcom/lge/gesture/LGSlideAsideImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->mSlideAside:Lcom/lge/gesture/LgeGesture;

    .line 29
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mSlideAside:Lcom/lge/gesture/LgeGesture;

    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->PALMSWIPE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    if-ne p1, v0, :cond_3

    .line 31
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mPalmSwipe:Lcom/lge/gesture/LgeGesture;

    if-eqz v0, :cond_2

    .line 32
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mPalmSwipe:Lcom/lge/gesture/LgeGesture;

    goto :goto_0

    .line 34
    :cond_2
    new-instance v0, Lcom/lge/gesture/LGPalmSwipeImpl;

    invoke-direct {v0, p0}, Lcom/lge/gesture/LGPalmSwipeImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->mPalmSwipe:Lcom/lge/gesture/LgeGesture;

    .line 35
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mPalmSwipe:Lcom/lge/gesture/LgeGesture;

    goto :goto_0

    .line 36
    :cond_3
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->PALMCOVER:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    if-ne p1, v0, :cond_5

    .line 37
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mPalmCover:Lcom/lge/gesture/LgeGesture;

    if-eqz v0, :cond_4

    .line 38
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mPalmCover:Lcom/lge/gesture/LgeGesture;

    goto :goto_0

    .line 40
    :cond_4
    new-instance v0, Lcom/lge/gesture/LGPalmCoverImpl;

    invoke-direct {v0, p0}, Lcom/lge/gesture/LGPalmCoverImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->mPalmCover:Lcom/lge/gesture/LgeGesture;

    .line 41
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mPalmCover:Lcom/lge/gesture/LgeGesture;

    goto :goto_0

    .line 42
    :cond_5
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->TILT:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    if-ne p1, v0, :cond_7

    .line 43
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mTilt:Lcom/lge/gesture/LgeGesture;

    if-eqz v0, :cond_6

    .line 44
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mTilt:Lcom/lge/gesture/LgeGesture;

    goto :goto_0

    .line 46
    :cond_6
    new-instance v0, Lcom/lge/gesture/LGTiltImpl;

    invoke-direct {v0, p0}, Lcom/lge/gesture/LGTiltImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory;->mTilt:Lcom/lge/gesture/LgeGesture;

    .line 47
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory;->mTilt:Lcom/lge/gesture/LgeGesture;

    goto :goto_0

    .line 49
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method
