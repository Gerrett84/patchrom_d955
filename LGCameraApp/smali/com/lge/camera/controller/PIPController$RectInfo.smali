.class Lcom/lge/camera/controller/PIPController$RectInfo;
.super Ljava/lang/Object;
.source "PIPController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PIPController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RectInfo"
.end annotation


# instance fields
.field private mHeight:I

.field private mPrevRectX0:I

.field private mPrevRectX1:I

.field private mPrevRectY0:I

.field private mPrevRectY1:I

.field private mRectX0:I

.field private mRectX1:I

.field private mRectY0:I

.field private mRectY1:I

.field private mWidth:I

.field final synthetic this$0:Lcom/lge/camera/controller/PIPController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/PIPController;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 95
    iput-object p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->this$0:Lcom/lge/camera/controller/PIPController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 97
    invoke-virtual {p0}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPrevPositionUpdate()V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/controller/PIPController;IIII)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->this$0:Lcom/lge/camera/controller/PIPController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    return p1
.end method

.method static synthetic access$112(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    return v0
.end method

.method static synthetic access$120(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    return p1
.end method

.method static synthetic access$212(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    return v0
.end method

.method static synthetic access$220(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    return p1
.end method

.method static synthetic access$312(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    return v0
.end method

.method static synthetic access$320(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    return v0
.end method

.method static synthetic access$402(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    return p1
.end method

.method static synthetic access$412(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    return v0
.end method

.method static synthetic access$420(Lcom/lge/camera/controller/PIPController$RectInfo;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    return v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mWidth:I

    return v0
.end method


# virtual methods
.method public restorePosition()V
    .locals 4

    .prologue
    .line 123
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectX0:I

    iget v1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectY0:I

    iget v2, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectX1:I

    iget v3, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectY1:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 127
    return-void
.end method

.method public setPosition(IIII)V
    .locals 2
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 103
    iput p1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    .line 104
    iput p2, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    .line 105
    iput p3, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    .line 106
    iput p4, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    .line 107
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    iget v1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mWidth:I

    .line 108
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    iget v1, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mHeight:I

    .line 109
    return-void
.end method

.method public setPosition(Lcom/lge/camera/controller/PIPController$RectInfo;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 111
    iget v0, p1, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    iget v1, p1, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    iget v2, p1, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    iget v3, p1, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 115
    return-void
.end method

.method public setPrevPositionUpdate()V
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectX0:I

    .line 118
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectY0:I

    .line 119
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectX1:I

    .line 120
    iget v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I

    iput v0, p0, Lcom/lge/camera/controller/PIPController$RectInfo;->mPrevRectY1:I

    .line 121
    return-void
.end method
