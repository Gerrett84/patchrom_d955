.class Lcom/lge/camera/controller/QuickButtonController$8;
.super Ljava/lang/Object;
.source "QuickButtonController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/QuickButtonController;->setAllMenuEnable(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;

.field final synthetic val$dimByEnable:Z

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/QuickButtonController;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$enable:Z

    iput-boolean p3, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$dimByEnable:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1202
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1203
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #getter for: Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickButtonController;->access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1225
    :cond_0
    return-void

    .line 1206
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #getter for: Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z
    invoke-static {v5}, Lcom/lge/camera/controller/QuickButtonController;->access$1300(Lcom/lge/camera/controller/QuickButtonController;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 1207
    .local v3, setEnable:Z
    :goto_0
    const/4 v0, 0x0

    .line 1208
    .local v0, button:Lcom/lge/camera/components/RotateImageButton;
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #getter for: Lcom/lge/camera/controller/QuickButtonController;->mMenuViewGroup:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/controller/QuickButtonController;->access$800(Lcom/lge/camera/controller/QuickButtonController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;

    .line 1209
    .local v2, quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    if-eqz v2, :cond_2

    .line 1212
    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->getButton()Lcom/lge/camera/components/RotateImageButton;

    move-result-object v0

    .line 1213
    iget-boolean v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$enable:Z

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1214
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 1215
    iget-boolean v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$dimByEnable:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #getter for: Lcom/lge/camera/controller/QuickButtonController;->isForcedMenuDisable:Z
    invoke-static {v5}, Lcom/lge/camera/controller/QuickButtonController;->access$1300(Lcom/lge/camera/controller/QuickButtonController;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1216
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #calls: Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
    invoke-static {v5, v0, v3}, Lcom/lge/camera/controller/QuickButtonController;->access$1100(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    goto :goto_1

    .line 1206
    .end local v0           #button:Lcom/lge/camera/components/RotateImageButton;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    .end local v3           #setEnable:Z
    :cond_4
    iget-boolean v3, p0, Lcom/lge/camera/controller/QuickButtonController$8;->val$enable:Z

    goto :goto_0

    .line 1218
    .restart local v0       #button:Lcom/lge/camera/components/RotateImageButton;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #quickButton:Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
    .restart local v3       #setEnable:Z
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    const/4 v6, 0x1

    #calls: Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
    invoke-static {v5, v0, v6}, Lcom/lge/camera/controller/QuickButtonController;->access$1100(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    goto :goto_1

    .line 1221
    :cond_6
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 1222
    iget-object v5, p0, Lcom/lge/camera/controller/QuickButtonController$8;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    #calls: Lcom/lge/camera/controller/QuickButtonController;->setMenuDim(Lcom/lge/camera/components/RotateImageButton;Z)V
    invoke-static {v5, v0, v4}, Lcom/lge/camera/controller/QuickButtonController;->access$1100(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V

    goto :goto_1
.end method
