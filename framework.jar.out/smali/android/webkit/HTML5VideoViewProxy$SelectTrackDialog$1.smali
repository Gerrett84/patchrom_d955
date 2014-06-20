.class Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog$1;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;-><init>(Landroid/webkit/HTML5VideoViewProxy;Landroid/content/Context;ILandroid/webkit/HTML5VideoViewProxy$OnSelectListener;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

.field final synthetic val$this$0:Landroid/webkit/HTML5VideoViewProxy;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1515
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog$1;->this$1:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    iput-object p2, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog$1;->val$this$0:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1519
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog$1;->this$1:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    #getter for: Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mCallBack:Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;
    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->access$2800(Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;)Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog$1;->this$1:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    #getter for: Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mCallBack:Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;
    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->access$2800(Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;)Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/webkit/HTML5VideoViewProxy$OnSelectListener;->onSelect(I)V

    .line 1521
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog$1;->this$1:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    #getter for: Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mDialog:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;
    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->access$2900(Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;)Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1522
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog$1;->this$1:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    #getter for: Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mDialog:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;
    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->access$2900(Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;)Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->dismiss()V

    .line 1523
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog$1;->this$1:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->mDialog:Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;->access$2902(Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;)Landroid/webkit/HTML5VideoViewProxy$SelectTrackDialog;

    .line 1525
    :cond_1
    return-void
.end method
