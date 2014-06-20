.class Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;
.super Ljava/lang/Object;
.source "QuickButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/QuickButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickButtonType"
.end annotation


# instance fields
.field private mButton:Lcom/lge/camera/components/RotateImageButton;

.field private mEnable:Z

.field private mNeedDefault:Z

.field final synthetic this$0:Lcom/lge/camera/controller/QuickButtonController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;Z)V
    .locals 1
    .parameter
    .parameter "button"
    .parameter "enable"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mButton:Lcom/lge/camera/components/RotateImageButton;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mNeedDefault:Z

    .line 56
    iput-object p2, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mButton:Lcom/lge/camera/components/RotateImageButton;

    .line 57
    iput-boolean p3, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/controller/QuickButtonController;Lcom/lge/camera/components/RotateImageButton;ZZ)V
    .locals 1
    .parameter
    .parameter "button"
    .parameter "enable"
    .parameter "needDefault"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->this$0:Lcom/lge/camera/controller/QuickButtonController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mButton:Lcom/lge/camera/components/RotateImageButton;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mNeedDefault:Z

    .line 61
    iput-object p2, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mButton:Lcom/lge/camera/components/RotateImageButton;

    .line 62
    iput-boolean p3, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    .line 63
    iput-boolean p4, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mNeedDefault:Z

    .line 64
    return-void
.end method


# virtual methods
.method public getButton()Lcom/lge/camera/components/RotateImageButton;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mButton:Lcom/lge/camera/components/RotateImageButton;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    return v0
.end method

.method public isNeedDefault()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mNeedDefault:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mEnable:Z

    .line 72
    return-void
.end method

.method public setNeedDefault(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/lge/camera/controller/QuickButtonController$QuickButtonType;->mNeedDefault:Z

    .line 80
    return-void
.end method
