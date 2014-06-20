.class Lcom/lge/view/TouchEventFilter$EssentialFilter;
.super Ljava/lang/Object;
.source "TouchEventFilter.java"

# interfaces
.implements Lcom/lge/view/TouchEventFilter$IEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EssentialFilter"
.end annotation


# instance fields
.field private act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

.field private isCancel:Z

.field private reportIdBits:I

.field private reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

.field final synthetic this$0:Lcom/lge/view/TouchEventFilter;


# direct methods
.method public constructor <init>(Lcom/lge/view/TouchEventFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->this$0:Lcom/lge/view/TouchEventFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    new-instance v0, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-direct {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;-><init>()V

    iput-object v0, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    .line 1095
    invoke-virtual {p0}, Lcom/lge/view/TouchEventFilter$EssentialFilter;->init()V

    .line 1096
    return-void
.end method


# virtual methods
.method public filtering(Landroid/view/MotionEvent;I)Z
    .locals 6
    .parameter "event"
    .parameter "tmpMask"

    .prologue
    const/4 v5, 0x1

    .line 1106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1107
    .local v0, action:I
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->setAllMask(I)I

    .line 1109
    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    if-ne v0, v5, :cond_1

    .line 1110
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1111
    .local v2, index:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1112
    .local v1, id:I
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v3, v1}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearMask(I)I

    .line 1115
    .end local v1           #id:I
    .end local v2           #index:I
    :cond_1
    iget-object v3, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->getMask()I

    move-result v3

    iput v3, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->reportIdBits:I

    .line 1117
    return v5
.end method

.method public getAct()Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    return-object v0
.end method

.method public getReportMask()I
    .locals 1

    .prologue
    .line 1125
    iget v0, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->reportIdBits:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1099
    sget-object v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    iput-object v0, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->act:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 1100
    iput v1, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->reportIdBits:I

    .line 1101
    iget-object v0, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->reportMask:Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;

    invoke-virtual {v0}, Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;->clearAllMask()I

    .line 1102
    iput-boolean v1, p0, Lcom/lge/view/TouchEventFilter$EssentialFilter;->isCancel:Z

    .line 1103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1129
    const-string v0, "EssentialFilter"

    return-object v0
.end method
