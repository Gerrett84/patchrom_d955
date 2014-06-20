.class Lcom/lge/camera/components/MultiDirectionSlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "MultiDirectionSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$SlidingHandler;->this$0:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;Lcom/lge/camera/components/MultiDirectionSlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$SlidingHandler;-><init>(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1068
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1073
    :goto_0
    return-void

    .line 1070
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$SlidingHandler;->this$0:Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    #calls: Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->doAnimation()V
    invoke-static {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->access$400(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)V

    goto :goto_0

    .line 1068
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
