.class public Lcom/android/lgesettings/RcseNotiView;
.super Landroid/app/Activity;
.source "RcseNotiView.java"


# instance fields
.field private URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v3, 0x7f040120

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/RcseNotiView;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseNotiView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 19
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/RcseNotiView;->URL:Ljava/lang/String;

    .line 20
    const v3, 0x7f0a0286

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/RcseNotiView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 22
    .local v2, webview:Landroid/webkit/WebView;
    :try_start_0
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 23
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "Euc-kr"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    new-instance v3, Lcom/android/lgesettings/RcseNotiView$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/RcseNotiView$1;-><init>(Lcom/android/lgesettings/RcseNotiView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 38
    iget-object v3, p0, Lcom/android/lgesettings/RcseNotiView;->URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
