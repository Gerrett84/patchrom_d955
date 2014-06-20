.class public Lcom/lge/camera/dialog/AuCloudDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "AuCloudDialog.java"


# static fields
.field private static final AU_CLOUD_PKG_NAME:Ljava/lang/String; = "com.kddi.android.auclouduploader"

.field private static final SCHEME:Ljava/lang/String; = "package"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 25
    return-void
.end method

.method public static showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 66
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method


# virtual methods
.method public create()V
    .locals 7

    .prologue
    .line 29
    iget-object v5, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f030030

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v4

    .line 30
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0900b6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 31
    .local v3, titleText:Landroid/widget/TextView;
    const v5, 0x7f0900bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 32
    .local v2, messageText:Landroid/widget/TextView;
    const v5, 0x7f0900c0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 33
    .local v1, btnOk:Landroid/widget/Button;
    const v5, 0x7f090183

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, btnCancel:Landroid/widget/Button;
    const v5, 0x7f0b0352

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 35
    const v5, 0x7f0b0354

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 36
    const v5, 0x7f0b002e

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 37
    const v5, 0x7f0b0039

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 39
    invoke-super {p0, v4}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 41
    new-instance v5, Lcom/lge/camera/dialog/AuCloudDialog$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/AuCloudDialog$1;-><init>(Lcom/lge/camera/dialog/AuCloudDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v5, Lcom/lge/camera/dialog/AuCloudDialog$2;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/AuCloudDialog$2;-><init>(Lcom/lge/camera/dialog/AuCloudDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method
