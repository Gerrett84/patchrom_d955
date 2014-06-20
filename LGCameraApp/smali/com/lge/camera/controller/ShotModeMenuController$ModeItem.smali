.class public Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
.super Ljava/lang/Object;
.source "ShotModeMenuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/ShotModeMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeItem"
.end annotation


# instance fields
.field public mCommand:Ljava/lang/String;

.field public mDesc:Ljava/lang/String;

.field public mDrawable:Landroid/graphics/drawable/LevelListDrawable;

.field public mImgResId:I

.field public mKey:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/camera/controller/ShotModeMenuController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/ShotModeMenuController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "key"
    .parameter "value"
    .parameter "title"
    .parameter "desc"
    .parameter "imgResId"
    .parameter "command"

    .prologue
    const/4 v1, 0x0

    .line 117
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->this$0:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mKey:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mValue:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mTitle:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mDesc:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mImgResId:I

    .line 113
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mDrawable:Landroid/graphics/drawable/LevelListDrawable;

    .line 114
    iput-object v1, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mCommand:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mKey:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mValue:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mTitle:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mDesc:Ljava/lang/String;

    .line 122
    iput p6, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mImgResId:I

    .line 123
    iput-object p7, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mCommand:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/LevelListDrawable;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mDrawable:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0
.end method

.method public getImageResourceId()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mImgResId:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/LevelListDrawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->mDrawable:Landroid/graphics/drawable/LevelListDrawable;

    .line 148
    return-void
.end method
