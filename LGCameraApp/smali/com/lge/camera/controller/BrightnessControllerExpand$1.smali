.class Lcom/lge/camera/controller/BrightnessControllerExpand$1;
.super Ljava/lang/Object;
.source "BrightnessControllerExpand.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/BrightnessControllerExpand;->initSettingBrightnessBar()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/BrightnessControllerExpand;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/BrightnessControllerExpand;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/camera/controller/BrightnessControllerExpand$1;->this$0:Lcom/lge/camera/controller/BrightnessControllerExpand;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
