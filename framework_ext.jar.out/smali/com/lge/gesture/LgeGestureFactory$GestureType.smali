.class public final enum Lcom/lge/gesture/LgeGestureFactory$GestureType;
.super Ljava/lang/Enum;
.source "LgeGestureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/gesture/LgeGestureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/gesture/LgeGestureFactory$GestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/gesture/LgeGestureFactory$GestureType;

.field public static final enum PALMCOVER:Lcom/lge/gesture/LgeGestureFactory$GestureType;

.field public static final enum PALMSWIPE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

.field public static final enum SLIDEASIDE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

.field public static final enum TILT:Lcom/lge/gesture/LgeGestureFactory$GestureType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;

    const-string v1, "SLIDEASIDE"

    invoke-direct {v0, v1, v2}, Lcom/lge/gesture/LgeGestureFactory$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->SLIDEASIDE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    new-instance v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;

    const-string v1, "PALMSWIPE"

    invoke-direct {v0, v1, v3}, Lcom/lge/gesture/LgeGestureFactory$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->PALMSWIPE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    new-instance v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;

    const-string v1, "PALMCOVER"

    invoke-direct {v0, v1, v4}, Lcom/lge/gesture/LgeGestureFactory$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->PALMCOVER:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    new-instance v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;

    const-string v1, "TILT"

    invoke-direct {v0, v1, v5}, Lcom/lge/gesture/LgeGestureFactory$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->TILT:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/gesture/LgeGestureFactory$GestureType;

    sget-object v1, Lcom/lge/gesture/LgeGestureFactory$GestureType;->SLIDEASIDE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/gesture/LgeGestureFactory$GestureType;->PALMSWIPE:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/gesture/LgeGestureFactory$GestureType;->PALMCOVER:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/gesture/LgeGestureFactory$GestureType;->TILT:Lcom/lge/gesture/LgeGestureFactory$GestureType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->$VALUES:[Lcom/lge/gesture/LgeGestureFactory$GestureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/gesture/LgeGestureFactory$GestureType;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;

    return-object v0
.end method

.method public static values()[Lcom/lge/gesture/LgeGestureFactory$GestureType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/lge/gesture/LgeGestureFactory$GestureType;->$VALUES:[Lcom/lge/gesture/LgeGestureFactory$GestureType;

    invoke-virtual {v0}, [Lcom/lge/gesture/LgeGestureFactory$GestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/gesture/LgeGestureFactory$GestureType;

    return-object v0
.end method
