.class Lcom/lge/camera/controller/SettingRotatableExpandableController$5;
.super Ljava/lang/Object;
.source "SettingRotatableExpandableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableExpandableController;->removeSettingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

.field final synthetic val$layout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableExpandableController;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    iput-object p2, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$5;->val$layout:Landroid/widget/RelativeLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$5;->val$layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 418
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableExpandableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;->removeSettingViewAll()V

    .line 419
    return-void
.end method
