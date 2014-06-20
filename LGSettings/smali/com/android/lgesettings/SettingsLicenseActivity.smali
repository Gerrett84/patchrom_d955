.class public Lcom/android/lgesettings/SettingsLicenseActivity;
.super Landroid/app/Activity;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/SettingsLicenseActivity$LicenseFileLoader;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mQuit:Z

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mQuit:Z

    .line 134
    iput-object v1, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 135
    iput-object v1, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 136
    iput-object v1, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 137
    iput-object v1, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/SettingsLicenseActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mQuit:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/SettingsLicenseActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mQuit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/SettingsLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/lgesettings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/SettingsLicenseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsLicenseActivity;->showErrorAndFinish()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/SettingsLicenseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsLicenseActivity;->cancelLoadData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/SettingsLicenseActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private cancelLoadData()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 283
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 284
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsLicenseActivity;->finish()V

    .line 286
    :cond_0
    return-void
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 275
    :cond_0
    const v0, 0x7f080523

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 277
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsLicenseActivity;->finish()V

    .line 278
    return-void
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 222
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080522

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 228
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/lgesettings/SettingsLicenseActivity$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/SettingsLicenseActivity$3;-><init>(Lcom/android/lgesettings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/lgesettings/SettingsLicenseActivity$4;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/SettingsLicenseActivity$4;-><init>(Lcom/android/lgesettings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 256
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/lgesettings/SettingsLicenseActivity$5;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/SettingsLicenseActivity$5;-><init>(Lcom/android/lgesettings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 268
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const-string v6, "ro.config.license_path"

    const-string v7, "/system/etc/NOTICE.html.gz"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    const-string v6, "SettingsLicenseActivity"

    const-string v7, "The system property for the license file is empty."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 202
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/SettingsLicenseActivity;->setVisible(Z)V

    .line 155
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 157
    iget-object v6, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 158
    .local v5, webSettings:Landroid/webkit/WebSettings;
    if-eqz v5, :cond_1

    .line 159
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 160
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 161
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 165
    :cond_1
    new-instance v6, Lcom/android/lgesettings/SettingsLicenseActivity$1;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/SettingsLicenseActivity$1;-><init>(Lcom/android/lgesettings/SettingsLicenseActivity;)V

    iput-object v6, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 184
    const v6, 0x7f080522

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 185
    .local v4, title:Ljava/lang/CharSequence;
    const v6, 0x7f080524

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 187
    .local v1, msg:Ljava/lang/CharSequence;
    invoke-static {p0, v4, v1, v9, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 188
    .local v2, pd:Landroid/app/ProgressDialog;
    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 189
    invoke-virtual {v2, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 190
    new-instance v6, Lcom/android/lgesettings/SettingsLicenseActivity$2;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/SettingsLicenseActivity$2;-><init>(Lcom/android/lgesettings/SettingsLicenseActivity;)V

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 197
    iput-object v2, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 200
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/android/lgesettings/SettingsLicenseActivity$LicenseFileLoader;

    iget-object v7, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v0, v7}, Lcom/android/lgesettings/SettingsLicenseActivity$LicenseFileLoader;-><init>(Lcom/android/lgesettings/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    .local v3, thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 216
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 218
    return-void
.end method
