.class Lcom/lge/camera/ShotPostviewActivity$7;
.super Ljava/lang/Object;
.source "ShotPostviewActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/ShotPostviewActivity;->sortPostviewMenuList(Ljava/util/ArrayList;Landroid/content/pm/PackageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/camera/postview/PostviewMenu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/ShotPostviewActivity;

.field final synthetic val$mmsName:Ljava/lang/String;

.field final synthetic val$pluggerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/ShotPostviewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/lge/camera/ShotPostviewActivity$7;->this$0:Lcom/lge/camera/ShotPostviewActivity;

    iput-object p2, p0, Lcom/lge/camera/ShotPostviewActivity$7;->val$pluggerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/camera/ShotPostviewActivity$7;->val$mmsName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lge/camera/postview/PostviewMenu;Lcom/lge/camera/postview/PostviewMenu;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1073
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity$7;->val$pluggerName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return v0

    .line 1075
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity$7;->val$pluggerName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1076
    goto :goto_0

    .line 1077
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity$7;->val$mmsName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity$7;->val$mmsName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1080
    goto :goto_0

    .line 1082
    :cond_3
    invoke-virtual {p1}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lge/camera/postview/PostviewMenu;->getLabelImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1070
    check-cast p1, Lcom/lge/camera/postview/PostviewMenu;

    .end local p1
    check-cast p2, Lcom/lge/camera/postview/PostviewMenu;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/ShotPostviewActivity$7;->compare(Lcom/lge/camera/postview/PostviewMenu;Lcom/lge/camera/postview/PostviewMenu;)I

    move-result v0

    return v0
.end method
