.class Lcom/lge/camera/postview/PostviewDialog$10;
.super Ljava/lang/Object;
.source "PostviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/postview/PostviewDialog;->createTimeMachineWarningPopup()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/postview/PostviewDialog;

.field final synthetic val$userCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/lge/camera/postview/PostviewDialog;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewDialog$10;->this$0:Lcom/lge/camera/postview/PostviewDialog;

    iput-object p2, p0, Lcom/lge/camera/postview/PostviewDialog$10;->val$userCheck:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewDialog$10;->this$0:Lcom/lge/camera/postview/PostviewDialog;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/ShotPostviewActivity;

    iget-object v1, p0, Lcom/lge/camera/postview/PostviewDialog$10;->val$userCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/lge/camera/ShotPostviewActivity;->doTimeMachineWarningPositiveClick(Landroid/widget/CheckBox;)V

    .line 302
    return-void
.end method
