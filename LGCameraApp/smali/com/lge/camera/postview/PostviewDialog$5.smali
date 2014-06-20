.class Lcom/lge/camera/postview/PostviewDialog$5;
.super Ljava/lang/Object;
.source "PostviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/postview/PostviewDialog;->createPostviewMenuListPopup()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/postview/PostviewDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/postview/PostviewDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewDialog$5;->this$0:Lcom/lge/camera/postview/PostviewDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewDialog$5;->this$0:Lcom/lge/camera/postview/PostviewDialog;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/ShotPostviewActivity;

    iget-object v1, p0, Lcom/lge/camera/postview/PostviewDialog$5;->this$0:Lcom/lge/camera/postview/PostviewDialog;

    #getter for: Lcom/lge/camera/postview/PostviewDialog;->mDialogId:I
    invoke-static {v1}, Lcom/lge/camera/postview/PostviewDialog;->access$000(Lcom/lge/camera/postview/PostviewDialog;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/lge/camera/ShotPostviewActivity;->adapterPositiveClick(II)V

    .line 231
    return-void
.end method
