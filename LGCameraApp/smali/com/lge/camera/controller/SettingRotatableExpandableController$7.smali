.class Lcom/lge/camera/controller/SettingRotatableExpandableController$7;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;->closeChildView(Landroid/view/ViewGroup;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

.field final synthetic val$childLayout:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iput-object p2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->val$childLayout:Landroid/view/ViewGroup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->val$childLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 802
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    const/4 v1, 0x0

    #setter for: Lcom/lge/camera/controller/SettingRotatableExpandableController;->mStateDisplayChild:I
    invoke-static {v0, v1}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->access$202(Lcom/lge/camera/controller/SettingRotatableExpandableController;I)I

    .line 803
    return-void
.end method
