.class Lcom/lge/camera/dialog/AuCloudDialog$1;
.super Ljava/lang/Object;
.source "AuCloudDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/AuCloudDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/AuCloudDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/AuCloudDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lge/camera/dialog/AuCloudDialog$1;->this$0:Lcom/lge/camera/dialog/AuCloudDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 43
    const-string v1, "CameraApp"

    const-string v2, "ok button click...."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/dialog/AuCloudDialog$1;->this$0:Lcom/lge/camera/dialog/AuCloudDialog;

    iget-object v1, v1, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.kddi.android.auclouduploader"

    invoke-static {v1, v2}, Lcom/lge/camera/dialog/AuCloudDialog;->showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/dialog/AuCloudDialog$1;->this$0:Lcom/lge/camera/dialog/AuCloudDialog;

    invoke-virtual {v1}, Lcom/lge/camera/dialog/AuCloudDialog;->onDismiss()V

    .line 51
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "CameraApp"

    const-string v2, "Au Cloud setting menu open fail"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
