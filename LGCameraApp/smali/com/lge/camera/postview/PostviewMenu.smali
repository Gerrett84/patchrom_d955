.class public Lcom/lge/camera/postview/PostviewMenu;
.super Ljava/lang/Object;
.source "PostviewMenu.java"


# instance fields
.field Icon:Landroid/graphics/drawable/Drawable;

.field PackageName:Ljava/lang/String;

.field labelApp:Ljava/lang/String;

.field labelImage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "labelImage"
    .parameter "labelApp"
    .parameter "PackageName"
    .parameter "Icon"

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->labelImage:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->labelApp:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->PackageName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->Icon:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenu;->labelImage:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/lge/camera/postview/PostviewMenu;->labelApp:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/lge/camera/postview/PostviewMenu;->PackageName:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/lge/camera/postview/PostviewMenu;->Icon:Landroid/graphics/drawable/Drawable;

    .line 17
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->Icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabelApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->labelApp:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->labelImage:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/camera/postview/PostviewMenu;->PackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenu;->Icon:Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method

.method public setLabelApp(Ljava/lang/String;)V
    .locals 0
    .parameter "labelApp"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenu;->labelApp:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setLabelImage(Ljava/lang/String;)V
    .locals 0
    .parameter "labelImage"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenu;->labelImage:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/camera/postview/PostviewMenu;->PackageName:Ljava/lang/String;

    .line 41
    return-void
.end method
