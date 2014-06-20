.class Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$1;
.super Ljava/lang/Object;
.source "StorageSelectionPopupRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 46
    const-string v0, "CameraApp"

    const-string v1, "ok button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    #calls: Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->OnPositiveButtonClick()V
    invoke-static {v0}, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->access$000(Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;)V

    .line 48
    iget-object v0, p0, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/StorageSelectionPopupRotatableDialog;->onDismiss()V

    .line 50
    return-void
.end method
