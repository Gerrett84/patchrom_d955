.class Lcom/android/lgesettings/RcseNotiView$1;
.super Landroid/webkit/WebViewClient;
.source "RcseNotiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/RcseNotiView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RcseNotiView;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RcseNotiView;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/lgesettings/RcseNotiView$1;->this$0:Lcom/android/lgesettings/RcseNotiView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 33
    return-void
.end method
