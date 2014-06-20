.class Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
.super Ljava/lang/Object;
.source "SettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackUpSettingMenuItem"
.end annotation


# instance fields
.field private settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;

.field private settingMenuItemIndex:I

.field final synthetic this$0:Lcom/lge/camera/controller/SettingController;


# direct methods
.method private constructor <init>(Lcom/lge/camera/controller/SettingController;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItemIndex:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/controller/SettingController;Lcom/lge/camera/controller/SettingController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;-><init>(Lcom/lge/camera/controller/SettingController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItemIndex:I

    return v0
.end method


# virtual methods
.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 82
    iput p1, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItemIndex:I

    .line 83
    return-void
.end method

.method public setSettingMenuItem(Lcom/lge/camera/setting/SettingMenuItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;

    .line 80
    return-void
.end method
