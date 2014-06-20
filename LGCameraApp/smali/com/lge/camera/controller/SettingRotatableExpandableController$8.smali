.class Lcom/lge/camera/controller/SettingRotatableExpandableController$8;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 815
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$8;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$8;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #calls: Lcom/lge/camera/controller/SettingRotatableExpandableController;->doOnCloseAnimationEnd()V
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$800(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    .line 827
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$8;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    #calls: Lcom/lge/camera/controller/SettingRotatableExpandableController;->updateParentScrollbar()V
    invoke-static {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$100(Lcom/lge/camera/controller/SettingRotatableExpandableController;)V

    .line 828
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 822
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$8;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    const/16 v1, 0x65

    #setter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$202(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I

    .line 819
    return-void
.end method
