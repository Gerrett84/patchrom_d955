.class Landroid/webkit/LGSelectActionPopupWindow$1;
.super Ljava/lang/Object;
.source "LGSelectActionPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/LGSelectActionPopupWindow;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/LGSelectActionPopupWindow;


# direct methods
.method constructor <init>(Landroid/webkit/LGSelectActionPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Landroid/webkit/LGSelectActionPopupWindow$1;->this$0:Landroid/webkit/LGSelectActionPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Landroid/webkit/LGSelectActionPopupWindow$1;->this$0:Landroid/webkit/LGSelectActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkit/LGSelectActionPopupWindow;->hide()V

    .line 141
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
