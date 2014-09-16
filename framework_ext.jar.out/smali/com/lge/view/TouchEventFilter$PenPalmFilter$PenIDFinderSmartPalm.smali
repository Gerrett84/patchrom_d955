.class Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;
.super Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;
.source "TouchEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter$PenPalmFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenIDFinderSmartPalm"
.end annotation


# instance fields
.field accumDist:F

.field avr:F

.field edgeResult:F

.field private hasLongDist:Z

.field final synthetic this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;


# direct methods
.method public constructor <init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1161
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    invoke-direct {p0, p1}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;-><init>(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)V

    .line 1180
    iput v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->avr:F

    .line 1181
    iput v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->edgeResult:F

    .line 1182
    iput v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->accumDist:F

    .line 1162
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->init()V

    .line 1163
    return-void
.end method


# virtual methods
.method public addInfo(IIFFFZ)V
    .locals 12
    .parameter "velX"
    .parameter "velY"
    .parameter "y"
    .parameter "z"
    .parameter "w"
    .parameter "edge"

    .prologue
    .line 1188
    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    .line 1189
    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    const/16 v10, 0x14

    if-lt v9, v10, :cond_6

    const/16 v1, 0x14

    .line 1191
    .local v1, count:I
    :goto_0
    int-to-float v9, p1

    int-to-float v10, p2

    mul-float v4, v9, v10

    .line 1192
    .local v4, mulVel:F
    div-float v5, v4, p3

    .line 1194
    .local v5, newDAvr:F
    if-lez v1, :cond_0

    .line 1195
    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    add-int/lit8 v10, v1, -0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v10, v1

    div-float/2addr v9, v10

    int-to-float v10, v1

    div-float v10, p4, v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    .line 1196
    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    add-int/lit8 v10, v1, -0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v10, v1

    div-float/2addr v9, v10

    int-to-float v10, v1

    div-float v10, v5, v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    .line 1200
    :cond_0
    const v9, 0x459c4000

    cmpl-float v9, v5, v9

    if-lez v9, :cond_1

    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    const/high16 v10, 0x4348

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 1201
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->hasLongDist:Z

    .line 1202
    iput v5, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->avr:F

    .line 1204
    :cond_1
    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->accumDist:F

    add-float/2addr v9, v5

    iput v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->accumDist:F

    .line 1207
    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    iget-object v9, v9, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    #getter for: Lcom/lge/view/TouchEventFilter;->DEBUG_LEVEL:I
    invoke-static {v9}, Lcom/lge/view/TouchEventFilter;->access$100(Lcom/lge/view/TouchEventFilter;)I

    move-result v9

    if-lez v9, :cond_2

    .line 1208
    const-string v9, "TouchEventFilter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addInfo z: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " zAvr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " w: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " newDAvr"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " inPalm: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inPalmRegion:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_2
    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    const/high16 v10, 0x420c

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_3

    const/high16 v9, 0x4080

    cmpl-float v9, p5, v9

    if-gtz v9, :cond_3

    const/high16 v9, 0x420c

    cmpl-float v9, p4, v9

    if-lez v9, :cond_4

    .line 1211
    :cond_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    .line 1215
    :cond_4
    if-nez p6, :cond_5

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->isVu3:Z
    invoke-static {v9}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$200(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1216
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inEdgeRegion:Z

    .line 1219
    :cond_5
    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    const/high16 v10, 0x41a0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    const/high16 v10, 0x41a0

    sub-float v2, v9, v10

    .line 1220
    .local v2, deltaZ:F
    :goto_1
    mul-float v9, v2, v2

    const/high16 v10, 0x3f80

    add-float v8, v9, v10

    .line 1221
    .local v8, zVal:F
    iget-boolean v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    if-eqz v9, :cond_9

    const/high16 v7, 0x3f80

    .line 1222
    .local v7, penVal:F
    :goto_2
    iget-boolean v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inPalmRegion:Z

    if-eqz v9, :cond_a

    const/4 v6, 0x0

    .line 1224
    .local v6, palmVal:F
    :goto_3
    iget-boolean v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inEdgeRegion:Z

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->isVu3:Z
    invoke-static {v9}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$200(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)Z

    move-result v9

    if-eqz v9, :cond_b

    const v3, 0x3a83126f

    .line 1225
    .local v3, edgeVal:F
    :goto_4
    iput v3, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->edgeResult:F

    .line 1227
    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    mul-float/2addr v9, v7

    mul-float/2addr v9, v6

    mul-float/2addr v9, v3

    int-to-float v10, v1

    mul-float/2addr v9, v10

    div-float/2addr v9, v8

    mul-float v10, v7, v6

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    iput v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->result:F

    .line 1229
    iget-object v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->isVu3:Z
    invoke-static {v9}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$200(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inEdgeRegion:Z

    if-nez v9, :cond_d

    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->result:F

    iget v10, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    int-to-float v10, v10

    const v11, 0x3c23d70a

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    :goto_5
    iput v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->result:F

    .line 1231
    return-void

    .line 1189
    .end local v1           #count:I
    .end local v2           #deltaZ:F
    .end local v3           #edgeVal:F
    .end local v4           #mulVel:F
    .end local v5           #newDAvr:F
    .end local v6           #palmVal:F
    .end local v7           #penVal:F
    .end local v8           #zVal:F
    :cond_6
    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    goto/16 :goto_0

    .line 1219
    .restart local v1       #count:I
    .restart local v4       #mulVel:F
    .restart local v5       #newDAvr:F
    :cond_7
    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    const/high16 v10, 0x4170

    cmpg-float v9, v9, v10

    if-gez v9, :cond_8

    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    const/high16 v10, 0x4170

    sub-float v2, v9, v10

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 1221
    .restart local v2       #deltaZ:F
    .restart local v8       #zVal:F
    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    .line 1222
    .restart local v7       #penVal:F
    :cond_a
    const/high16 v6, 0x3f80

    goto :goto_3

    .line 1224
    .restart local v6       #palmVal:F
    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    :cond_c
    const/high16 v3, 0x3f80

    goto :goto_4

    .line 1229
    .restart local v3       #edgeVal:F
    :cond_d
    iget v9, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->result:F

    goto :goto_5
.end method

.method public getAccumDist()F
    .locals 1

    .prologue
    .line 1183
    iget v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->accumDist:F

    return v0
.end method

.method public getDAvr()F
    .locals 1

    .prologue
    .line 1184
    iget v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    return v0
.end method

.method public hasLongDist()Z
    .locals 1

    .prologue
    .line 1244
    iget-boolean v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->hasLongDist:Z

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1166
    iput v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    .line 1167
    iput v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    .line 1168
    iput v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    .line 1169
    iput v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->result:F

    .line 1170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    .line 1171
    iput-boolean v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inPalmRegion:Z

    .line 1172
    iput-boolean v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inEdgeRegion:Z

    .line 1174
    iput-boolean v2, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->hasLongDist:Z

    .line 1175
    iput v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->avr:F

    .line 1176
    iput v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->accumDist:F

    .line 1178
    return-void
.end method

.method public isPen()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1235
    iget-object v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->this$1:Lcom/lge/view/TouchEventFilter$PenPalmFilter;

    #getter for: Lcom/lge/view/TouchEventFilter$PenPalmFilter;->isVu3:Z
    invoke-static {v1}, Lcom/lge/view/TouchEventFilter$PenPalmFilter;->access$200(Lcom/lge/view/TouchEventFilter$PenPalmFilter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1236
    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inPalmRegion:Z

    if-eqz v1, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return v0

    .line 1236
    :cond_1
    iget-boolean v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    goto :goto_0

    .line 1238
    :cond_2
    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inEdgeRegion:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inPalmRegion:Z

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    goto :goto_0
.end method

.method public setFinger(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1250
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->pen:Z

    .line 1251
    return-void

    .line 1250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->cnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] zAvr["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->zAvr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] dAvr["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->dAvr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] isPen["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->isPen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] result["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->getResult()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] longDist ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->avr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] edge ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->edgeResult:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] inPalm ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinder;->inPalmRegion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] accumDist ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/view/TouchEventFilter$PenPalmFilter$PenIDFinderSmartPalm;->accumDist:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
