.class Lcom/lge/camera/controller/ShotModeMenuController$9;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/ShotModeMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ShotModeMenuController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ShotModeMenuController;)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$9;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 961
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 963
    .local v3, touchCounts:I
    if-le v3, v6, :cond_0

    .line 964
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$9;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mViewMode:I

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$9;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    if-eqz v5, :cond_0

    .line 965
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$9;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 966
    const/4 v2, 0x0

    .line 967
    .local v2, item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$9;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->getItem(I)Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    move-result-object v2

    .line 968
    if-eqz v2, :cond_2

    .line 969
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$9;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGridMenuView:Landroid/widget/GridView;

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 970
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_1

    .line 971
    const-string v5, "CameraApp"

    const-string v6, "view is null!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    .end local v0           #i:I
    .end local v2           #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    return v7

    .line 975
    .restart local v0       #i:I
    .restart local v2       #item:Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .restart local v4       #view:Landroid/view/View;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$9;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->SELECTED_POS:I

    if-eq v5, v0, :cond_2

    .line 976
    const v5, 0x7f0901df

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 977
    .local v1, imgView:Landroid/widget/ImageView;
    const v5, 0x7f02025e

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 978
    iget-object v5, p0, Lcom/lge/camera/controller/ShotModeMenuController$9;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    iget-object v5, v5, Lcom/lge/camera/controller/ShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->notifyDataSetChanged()V

    .line 979
    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 965
    .end local v1           #imgView:Landroid/widget/ImageView;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
