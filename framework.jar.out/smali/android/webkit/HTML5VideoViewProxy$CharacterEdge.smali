.class final enum Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;
.super Ljava/lang/Enum;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CharacterEdge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

.field public static final enum DEPRESSED:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

.field public static final enum NONE:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

.field public static final enum OUTLINE:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

.field public static final enum RAISED:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

.field public static final enum SHADOW:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;


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

    .line 195
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    const-string v1, "NONE"

    const-string/jumbo v2, "none"

    invoke-direct {v0, v1, v3, v2}, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->NONE:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    .line 196
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    const-string v1, "RAISED"

    const-string/jumbo v2, "raised"

    invoke-direct {v0, v1, v4, v2}, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->RAISED:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    .line 197
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    const-string v1, "DEPRESSED"

    const-string v2, "depressed"

    invoke-direct {v0, v1, v5, v2}, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->DEPRESSED:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    .line 198
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    const-string v1, "OUTLINE"

    const-string/jumbo v2, "outline"

    invoke-direct {v0, v1, v6, v2}, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->OUTLINE:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    .line 199
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    const-string v1, "SHADOW"

    const-string/jumbo v2, "shadow"

    invoke-direct {v0, v1, v7, v2}, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->SHADOW:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    .line 194
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->NONE:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->RAISED:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    aput-object v1, v0, v4

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->DEPRESSED:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    aput-object v1, v0, v5

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->OUTLINE:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    aput-object v1, v0, v6

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->SHADOW:Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    aput-object v1, v0, v7

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->$VALUES:[Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "edge"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 201
    iput-object p3, p0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->value:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;
    .locals 1
    .parameter "name"

    .prologue
    .line 194
    const-class v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    return-object v0
.end method

.method public static values()[Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->$VALUES:[Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    invoke-virtual {v0}, [Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/HTML5VideoViewProxy$CharacterEdge;

    return-object v0
.end method
