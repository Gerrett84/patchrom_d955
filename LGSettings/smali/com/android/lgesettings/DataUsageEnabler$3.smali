.class Lcom/android/lgesettings/DataUsageEnabler$3;
.super Ljava/lang/Object;
.source "DataUsageEnabler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageEnabler;->setSwitch(Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageEnabler$3;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    .line 213
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageEnabler$3;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    iput-boolean v1, v0, Lcom/android/lgesettings/DataUsageEnabler;->fromTouch:Z

    .line 218
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
