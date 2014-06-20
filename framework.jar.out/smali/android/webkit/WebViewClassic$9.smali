.class Landroid/webkit/WebViewClassic$9;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->showLGSelectActionPopupWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 10664
    iput-object p1, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10667
    iget-object v0, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsForeground:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$9800(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10673
    :cond_0
    :goto_0
    return-void

    .line 10669
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLGSelectActionPopupWindow:Landroid/webkit/LGSelectActionPopupWindow;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$9900(Landroid/webkit/WebViewClassic;)Landroid/webkit/LGSelectActionPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10670
    iget-object v0, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLGSelectActionPopupWindow:Landroid/webkit/LGSelectActionPopupWindow;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$9900(Landroid/webkit/WebViewClassic;)Landroid/webkit/LGSelectActionPopupWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/LGSelectActionPopupWindow;->show(Landroid/view/View;)V

    .line 10671
    iget-object v0, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLGSelectActionPopupWindow:Landroid/webkit/LGSelectActionPopupWindow;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$9900(Landroid/webkit/WebViewClassic;)Landroid/webkit/LGSelectActionPopupWindow;

    move-result-object v1

    iget-object v0, p0, Landroid/webkit/WebViewClassic$9;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsSelectingAll:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$10000(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/webkit/LGSelectActionPopupWindow;->enableSelectAll(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
