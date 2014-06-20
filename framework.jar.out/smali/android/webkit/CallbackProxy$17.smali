.class Landroid/webkit/CallbackProxy$17;
.super Landroid/webkit/CallbackProxy$PickerHandler;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CallbackProxy;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CallbackProxy;


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1267
    iput-object p1, p0, Landroid/webkit/CallbackProxy$17;->this$0:Landroid/webkit/CallbackProxy;

    invoke-direct {p0, p1, p2}, Landroid/webkit/CallbackProxy$PickerHandler;-><init>(Landroid/webkit/CallbackProxy;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public valueSelected(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1270
    iget-object v0, p0, Landroid/webkit/CallbackProxy$17;->this$0:Landroid/webkit/CallbackProxy;

    #getter for: Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/CallbackProxy;->access$200(Landroid/webkit/CallbackProxy;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Landroid/webkit/CallbackProxy$17;->this$0:Landroid/webkit/CallbackProxy;

    #getter for: Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v0}, Landroid/webkit/CallbackProxy;->access$200(Landroid/webkit/CallbackProxy;)Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->sendPickerValue(Ljava/lang/String;)V

    .line 1273
    :cond_0
    return-void
.end method
