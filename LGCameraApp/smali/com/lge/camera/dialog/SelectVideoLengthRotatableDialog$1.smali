.class Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$1;
.super Ljava/lang/Object;
.source "SelectVideoLengthRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 38
    const-string v0, "CameraApp"

    const-string v1, "ok button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;

    #calls: Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->onMmsClick()V
    invoke-static {v0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->access$000(Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;)V

    .line 40
    iget-object v0, p0, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->onDismiss()V

    .line 41
    return-void
.end method
