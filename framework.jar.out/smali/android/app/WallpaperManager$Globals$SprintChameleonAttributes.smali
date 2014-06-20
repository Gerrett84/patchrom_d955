.class Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager$Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SprintChameleonAttributes"
.end annotation


# instance fields
.field public networkCode:Ljava/lang/String;

.field public resourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "init"

    .prologue
    .line 490
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 491
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, fragments:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;->networkCode:Ljava/lang/String;

    .line 493
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals$SprintChameleonAttributes;->resourceName:Ljava/lang/String;

    .line 494
    return-void
.end method
