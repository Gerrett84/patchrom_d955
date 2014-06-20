.class public Lcom/lge/camera/components/OptionMenu;
.super Ljava/lang/Object;
.source "OptionMenu.java"


# instance fields
.field menuIcon:Landroid/graphics/drawable/Drawable;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "title"
    .parameter "icon"

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/lge/camera/components/OptionMenu;->title:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/lge/camera/components/OptionMenu;->menuIcon:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object p1, p0, Lcom/lge/camera/components/OptionMenu;->title:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/lge/camera/components/OptionMenu;->menuIcon:Landroid/graphics/drawable/Drawable;

    .line 12
    return-void
.end method


# virtual methods
.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/components/OptionMenu;->menuIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/camera/components/OptionMenu;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setMenuIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lge/camera/components/OptionMenu;->menuIcon:Landroid/graphics/drawable/Drawable;

    .line 28
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lge/camera/components/OptionMenu;->title:Ljava/lang/String;

    .line 20
    return-void
.end method
