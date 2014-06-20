.class final enum Landroid/webkit/HTML5VideoViewProxy$CharacterSize;
.super Ljava/lang/Enum;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CharacterSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/HTML5VideoViewProxy$CharacterSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

.field public static final enum LARGE:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

.field public static final enum NORMAL:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

.field public static final enum SMALL:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

.field public static final enum VERY_LARGE:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

.field public static final enum VERY_SMALL:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    const-string v1, "VERY_SMALL"

    const-string v2, "50"

    invoke-direct {v0, v1, v3, v2}, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->VERY_SMALL:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    .line 182
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    const-string v1, "SMALL"

    const-string v2, "70"

    invoke-direct {v0, v1, v4, v2}, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->SMALL:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    .line 183
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    const-string v1, "NORMAL"

    const-string v2, "100"

    invoke-direct {v0, v1, v5, v2}, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->NORMAL:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    .line 184
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    const-string v1, "LARGE"

    const-string v2, "130"

    invoke-direct {v0, v1, v6, v2}, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->LARGE:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    .line 185
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    const-string v1, "VERY_LARGE"

    const-string v2, "200"

    invoke-direct {v0, v1, v7, v2}, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->VERY_LARGE:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    .line 180
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->VERY_SMALL:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->SMALL:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    aput-object v1, v0, v4

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->NORMAL:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    aput-object v1, v0, v5

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->LARGE:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    aput-object v1, v0, v6

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->VERY_LARGE:Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    aput-object v1, v0, v7

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->$VALUES:[Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    iput-object p3, p0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->value:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/HTML5VideoViewProxy$CharacterSize;
    .locals 1
    .parameter "name"

    .prologue
    .line 180
    const-class v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    return-object v0
.end method

.method public static values()[Landroid/webkit/HTML5VideoViewProxy$CharacterSize;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->$VALUES:[Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    invoke-virtual {v0}, [Landroid/webkit/HTML5VideoViewProxy$CharacterSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/HTML5VideoViewProxy$CharacterSize;

    return-object v0
.end method
