.class Lcom/lge/camera/components/BarView$6;
.super Ljava/lang/Object;
.source "BarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/BarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/BarView;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/BarView;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/lge/camera/components/BarView$6;->this$0:Lcom/lge/camera/components/BarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/lge/camera/components/BarView$6;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/BarView;->onButtonTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
