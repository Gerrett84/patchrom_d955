.class Landroid/webkit/LGTranslateReceiver$1;
.super Ljava/lang/Object;
.source "LGTranslateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/LGTranslateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/LGTranslateReceiver;


# direct methods
.method constructor <init>(Landroid/webkit/LGTranslateReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Landroid/webkit/LGTranslateReceiver$1;->this$0:Landroid/webkit/LGTranslateReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/webkit/LGTranslateReceiver$1;->this$0:Landroid/webkit/LGTranslateReceiver;

    #getter for: Landroid/webkit/LGTranslateReceiver;->mWebViewClassic:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/LGTranslateReceiver;->access$000(Landroid/webkit/LGTranslateReceiver;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getTranslateMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/webkit/LGTranslateReceiver$1;->this$0:Landroid/webkit/LGTranslateReceiver;

    invoke-virtual {v0}, Landroid/webkit/LGTranslateReceiver;->translateSelection()V

    .line 132
    :cond_0
    return-void
.end method
