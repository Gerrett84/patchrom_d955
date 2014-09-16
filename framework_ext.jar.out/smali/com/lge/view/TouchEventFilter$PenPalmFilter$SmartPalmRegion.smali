.class Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;
.super Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;
.source "TouchEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter$PenPalmFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartPalmRegion"
.end annotation


# instance fields
.field private final PALM_INCH:F

.field private PALM_X:I

.field private PALM_Y:I

.field private centerRect:Landroid/graphics/Rect;

.field private mPenUp:Landroid/graphics/Point;

.field private mPenUpTime:J

.field private numPalm:I

.field private pointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private rectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field rectUnion:Landroid/graphics/Rect;

.field private rectUpTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;


# direct methods
.method public constructor <init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;FF)V
    .locals 7
    .parameter
    .parameter "xdpi"
    .parameter "ydpi"

    .prologue
    const-wide/16 v5, 0x0

    const v2, 0x3f4ccccc

    const/4 v4, 0x0

    .line 1276
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    invoke-direct {p0, p1}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PalmRegion;-><init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)V

    .line 1262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectList:Ljava/util/ArrayList;

    .line 1263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->pointList:Ljava/util/ArrayList;

    .line 1264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    .line 1266
    iput v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_INCH:F

    .line 1270
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    .line 1271
    iput v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->numPalm:I

    .line 1273
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    .line 1274
    iput-wide v5, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUpTime:J

    .line 1399
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUnion:Landroid/graphics/Rect;

    .line 1277
    mul-float v1, p2, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    .line 1278
    mul-float v1, p3, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    .line 1279
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I
    invoke-static {p1}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1280
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {p1}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1282
    iget-object v1, p1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v1}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1283
    const-string v1, "TouchEventFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->mView:Landroid/view/View;
    invoke-static {p1}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$500(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fliter view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/lge/view/TouchEventFilter;->access$600(Lcom/lge/view/TouchEventFilter;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const-string v1, "TouchEventFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PALM_X: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PALM_Y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " xdpi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ydpi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1288
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->pointList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1293
    :cond_1
    return-void
.end method


# virtual methods
.method public assignPalm(IIIZ)V
    .locals 10
    .parameter "id"
    .parameter "x"
    .parameter "y"
    .parameter "largePalm"

    .prologue
    .line 1310
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v6, v6, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v6

    if-lez v6, :cond_0

    .line 1311
    const-string v6, "TouchEventFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "assign palm id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_0
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1314
    iget v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    add-int v4, p2, v6

    .line 1315
    .local v4, right:I
    iget v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    sub-int v1, p2, v6

    .line 1316
    .local v1, left:I
    iget v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    sub-int v5, p3, v6

    .line 1317
    .local v5, top:I
    iget v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    add-int v0, p3, v6

    .line 1319
    .local v0, bottom:I
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-lez v6, :cond_7

    .line 1320
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v6, v6, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v6

    if-lez v6, :cond_1

    .line 1321
    const-string v6, "TouchEventFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "assign palm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pen up: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_1
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-le v6, v1, :cond_2

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-lt v6, v4, :cond_13

    .line 1324
    :cond_2
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 1325
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    add-int/2addr v6, v7

    if-le v1, v6, :cond_e

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    if-le v1, v6, :cond_3

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v1

    div-int/lit8 v1, v6, 0x2

    .line 1326
    :cond_3
    :goto_0
    iget v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    if-le v1, v6, :cond_4

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v4

    .line 1348
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-le v6, v5, :cond_5

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-lt v6, v0, :cond_1c

    .line 1349
    :cond_5
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v6, v7, :cond_19

    .line 1350
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    add-int/2addr v6, v7

    if-le v5, v6, :cond_18

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_6

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v5

    div-int/lit8 v5, v6, 0x2

    .line 1351
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v0

    .line 1374
    :cond_7
    :goto_3
    iget v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    if-ge v1, v6, :cond_8

    .line 1375
    const/4 v1, 0x0

    .line 1376
    :cond_8
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v6

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    sub-int/2addr v6, v7

    if-le v4, v6, :cond_9

    .line 1377
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v4

    .line 1378
    :cond_9
    iget v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    if-ge v5, v6, :cond_a

    .line 1379
    const/4 v5, 0x0

    .line 1380
    :cond_a
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v6

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    sub-int/2addr v6, v7

    if-le v0, v6, :cond_b

    .line 1381
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v0

    .line 1383
    :cond_b
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 1384
    .local v3, mRect:Landroid/graphics/Rect;
    invoke-virtual {v3, v1, v5, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1386
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1387
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v6, v6, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v6

    if-lez v6, :cond_c

    .line 1388
    const-string v6, "TouchEventFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mRect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const-string v6, "TouchEventFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "if(mRect.contains(mPenUp.x, mPenUp.y)) id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_c
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1392
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1395
    :cond_d
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 1396
    .local v2, mPoint:Landroid/graphics/Point;
    invoke-virtual {v2, p2, p3}, Landroid/graphics/Point;->set(II)V

    .line 1397
    return-void

    .line 1325
    .end local v2           #mPoint:Landroid/graphics/Point;
    .end local v3           #mRect:Landroid/graphics/Rect;
    :cond_e
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    add-int v1, v6, v7

    goto/16 :goto_0

    .line 1329
    :cond_f
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_12

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_10

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v4

    div-int/lit8 v4, v6, 0x2

    .line 1330
    :cond_10
    :goto_4
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v6

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    sub-int/2addr v6, v7

    if-ge v4, v6, :cond_11

    const/4 v1, 0x0

    :cond_11
    goto/16 :goto_1

    .line 1329
    :cond_12
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    sub-int v4, v6, v7

    goto :goto_4

    .line 1334
    :cond_13
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-ge v6, v5, :cond_14

    .line 1335
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v0

    .line 1336
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    add-int v5, v6, v7

    goto/16 :goto_1

    .line 1338
    :cond_14
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-le v6, v0, :cond_16

    .line 1339
    const/4 v5, 0x0

    .line 1340
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I
    invoke-static {v7}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v7

    if-le v6, v7, :cond_15

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v0

    :goto_5
    goto/16 :goto_1

    :cond_15
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    add-int v0, v6, v7

    goto :goto_5

    .line 1342
    :cond_16
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v6

    if-ne v0, v6, :cond_17

    .line 1343
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    add-int v5, v6, v7

    goto/16 :goto_1

    .line 1344
    :cond_17
    if-nez v5, :cond_4

    .line 1345
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    sub-int v0, v6, v7

    goto/16 :goto_1

    .line 1350
    :cond_18
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    add-int v5, v6, v7

    goto/16 :goto_2

    .line 1354
    :cond_19
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_1b

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    if-ge v0, v6, :cond_1a

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v0

    div-int/lit8 v0, v6, 0x2

    .line 1355
    :cond_1a
    :goto_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1354
    :cond_1b
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_Y:I

    sub-int v0, v6, v7

    goto :goto_6

    .line 1359
    :cond_1c
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ge v6, v1, :cond_1d

    .line 1360
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v4

    .line 1361
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    add-int v1, v6, v7

    goto/16 :goto_3

    .line 1363
    :cond_1d
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-le v6, v4, :cond_1f

    .line 1364
    const/4 v1, 0x0

    .line 1365
    iget v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {v7}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v7

    if-le v6, v7, :cond_1e

    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v4

    :goto_7
    goto/16 :goto_3

    :cond_1e
    iget v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int v4, v6, v7

    goto :goto_7

    .line 1367
    :cond_1f
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {v6}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v6

    if-ne v4, v6, :cond_20

    .line 1368
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    add-int v1, v6, v7

    goto/16 :goto_3

    .line 1369
    :cond_20
    if-nez v1, :cond_7

    .line 1370
    iget-object v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->PALM_X:I

    sub-int v4, v6, v7

    goto/16 :goto_3
.end method

.method public checkPalmRegion(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1600
    const/4 v0, 0x0

    return v0
.end method

.method public checkPalmRegion(IIJ)Z
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 1402
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v7, v7, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v7}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v7

    if-lez v7, :cond_0

    .line 1403
    const-string v7, "TouchEventFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkPalmRegion palm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_0
    const/4 v0, 0x0

    .line 1405
    .local v0, cnt:I
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {v8}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v8

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I
    invoke-static {v9}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1406
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {v7}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v4

    .line 1407
    .local v4, max_left:I
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I
    invoke-static {v7}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v6

    .line 1408
    .local v6, max_top:I
    const/4 v5, 0x0

    .line 1409
    .local v5, max_right:I
    const/4 v3, 0x0

    .line 1411
    .local v3, max_bottom:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_f

    .line 1412
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1413
    .local v2, mRect:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, p3, v7

    const-wide/16 v9, 0x12c

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 1414
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v7, v7, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v7}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v7

    if-lez v7, :cond_1

    .line 1415
    const-string v8, "TouchEventFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eventTime - rectUpTime.get(i): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, p3, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_1
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1417
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1419
    :cond_2
    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-eqz v7, :cond_4

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v7, :cond_4

    .line 1420
    if-nez v0, :cond_6

    .line 1422
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 1423
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 1424
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 1425
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 1427
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1428
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 1429
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1430
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1452
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 1453
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v7, v7, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v7}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v7

    if-lez v7, :cond_4

    .line 1454
    const-string v7, "TouchEventFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " center Rect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_4
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1457
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v7, v7, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v7}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v7

    if-lez v7, :cond_5

    .line 1458
    const-string v7, "TouchEventFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mRect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_5
    const/4 v7, 0x1

    .line 1469
    .end local v2           #mRect:Landroid/graphics/Rect;
    :goto_2
    return v7

    .line 1433
    .restart local v2       #mRect:Landroid/graphics/Rect;
    :cond_6
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    if-gt v7, v8, :cond_7

    .line 1434
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 1435
    :cond_7
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v8, :cond_8

    .line 1436
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 1437
    :cond_8
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    if-gt v7, v8, :cond_9

    .line 1438
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 1439
    :cond_9
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_a

    .line 1440
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 1442
    :cond_a
    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-le v4, v7, :cond_b

    .line 1443
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1444
    :cond_b
    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-ge v5, v7, :cond_c

    .line 1445
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 1446
    :cond_c
    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_d

    .line 1447
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1448
    :cond_d
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v7, :cond_3

    .line 1449
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 1411
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1463
    .end local v2           #mRect:Landroid/graphics/Rect;
    :cond_f
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_11

    if-lez v0, :cond_11

    .line 1464
    iget-object v7, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v7, v7, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v7}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v7

    if-lez v7, :cond_10

    .line 1465
    const-string v7, "TouchEventFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " center palm Rect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_10
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1469
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_2
.end method

.method public delete(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1595
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1596
    .local v0, mRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1597
    return-void
.end method

.method public distToPalm(II)F
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1528
    const/4 v0, 0x0

    .line 1529
    .local v0, result:F
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v1, v1, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v1}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1530
    const-string v1, "TouchEventFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " center Rect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_0
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_2

    .line 1532
    :cond_1
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p1, v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, p2, v2

    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int v3, p2, v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 1534
    :cond_2
    return v0
.end method

.method public distToPenUp(II)F
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1538
    const/4 v0, 0x0

    .line 1539
    .local v0, result:F
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v2, p1, v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v2, p2, v2

    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v3, p2, v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 1541
    :cond_0
    return v0
.end method

.method public getCenterPalmRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_HEIGHT:I
    invoke-static {v0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$300(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->MAX_WIDTH:I
    invoke-static {v0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$400(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)I

    move-result v0

    return v0
.end method

.method public getPalmCenter()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 1545
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1296
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v3, v3, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v3}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v3

    if-lez v3, :cond_0

    .line 1297
    const-string v3, "TouchEventFilter"

    const-string v4, "SmartPalm init() "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1299
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1300
    .local v2, mRect:Landroid/graphics/Rect;
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1301
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1302
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 1303
    .local v1, mPoint:Landroid/graphics/Point;
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Point;->set(II)V

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1305
    .end local v1           #mPoint:Landroid/graphics/Point;
    .end local v2           #mRect:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1306
    iput v6, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->numPalm:I

    .line 1307
    return-void
.end method

.method public isCenterPalmFirst()Z
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPenUp(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 1564
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUp:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 1565
    return-void
.end method

.method public setPenUpTime(J)V
    .locals 0
    .parameter "t"

    .prologue
    .line 1568
    iput-wide p1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->mPenUpTime:J

    .line 1569
    return-void
.end method

.method public setUpTime(IJ)V
    .locals 3
    .parameter "id"
    .parameter "time"

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v0, v0, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v0}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1554
    const-string v0, "TouchEventFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUpTime id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1556
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1574
    .local v3, msg:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1575
    iget-object v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1576
    .local v2, mRect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 1577
    .local v1, mPoint:Landroid/graphics/Point;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->rectUpTime:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1582
    .end local v1           #mPoint:Landroid/graphics/Point;
    .end local v2           #mRect:Landroid/graphics/Rect;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/center Rect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$SmartPalmRegion;->centerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
