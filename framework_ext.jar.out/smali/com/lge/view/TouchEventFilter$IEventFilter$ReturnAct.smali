.class public final enum Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
.super Ljava/lang/Enum;
.source "TouchEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter$IEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReturnAct"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

.field public static final enum CANCEL:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

.field public static final enum CANCEL_AND_REPEAT:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

.field public static final enum IGNORE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

.field public static final enum NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 433
    new-instance v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    new-instance v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v3, v3}, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->IGNORE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    new-instance v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4, v4}, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    new-instance v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    const-string v1, "CANCEL_AND_REPEAT"

    invoke-direct {v0, v1, v5, v5}, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL_AND_REPEAT:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    .line 432
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    sget-object v1, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->NONE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->IGNORE:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->CANCEL_AND_REPEAT:Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->$VALUES:[Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    .locals 1
    .parameter "name"

    .prologue
    .line 432
    const-class v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    return-object v0
.end method

.method public static values()[Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->$VALUES:[Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    invoke-virtual {v0}, [Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;

    return-object v0
.end method


# virtual methods
.method public getVal()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/lge/view/TouchEventFilter$IEventFilter$ReturnAct;->value:I

    return v0
.end method
