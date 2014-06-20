.class interface abstract Lcom/lge/view/TouchEventFilter$IEventFilter;
.super Ljava/lang/Object;
.source "TouchEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IEventFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/view/TouchEventFilter$IEventFilter$TouchCheckMask;,
        Lcom/lge/view/TouchEventFilter$IEventFilter$FindEdgeRegion;,
        Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    }
.end annotation


# static fields
.field public static final LCD_X:I = 0x438

.field public static final LCD_Y:I = 0x780

.field public static final MAX_POINTER_COUNT:I = 0xa


# virtual methods
.method public abstract filtering(Landroid/view/MotionEvent;I)Z
.end method

.method public abstract getAct()Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
.end method

.method public abstract getReportMask()I
.end method

.method public abstract init()V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
