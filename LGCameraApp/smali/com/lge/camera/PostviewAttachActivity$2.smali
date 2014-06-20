.class Lcom/lge/camera/PostviewAttachActivity$2;
.super Ljava/lang/Object;
.source "PostviewAttachActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewAttachActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewAttachActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewAttachActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lge/camera/PostviewAttachActivity$2;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/camera/PostviewAttachActivity$2;->this$0:Lcom/lge/camera/PostviewAttachActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewAttachActivity;->finish()V

    .line 122
    return-void
.end method
