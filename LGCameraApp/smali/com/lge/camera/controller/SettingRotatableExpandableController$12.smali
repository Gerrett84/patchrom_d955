.class Lcom/lge/camera/controller/SettingRotatableExpandableController$12;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V
    .locals 0
    .parameter

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1441
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v3, v3, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 1442
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1443
    .local v1, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1444
    .local v2, y:F
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iget-object v3, v3, Lcom/lge/camera/controller/SettingRotatableExpandableController;->mSettingView:Landroid/view/View;

    const v4, 0x7f0901b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1445
    .local v0, rdl:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1446
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-lez v3, :cond_2

    .line 1448
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->checkAndCloseChildView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1449
    const/4 v3, 0x1

    .line 1455
    .end local v0           #rdl:Landroid/view/View;
    .end local v1           #x:F
    .end local v2           #y:F
    :goto_0
    return v3

    .line 1451
    .restart local v0       #rdl:Landroid/view/View;
    .restart local v1       #x:F
    .restart local v2       #y:F
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$12;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->removeSettingView()V

    .line 1455
    .end local v0           #rdl:Landroid/view/View;
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
