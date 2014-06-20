.class final enum Lcom/lge/view/TouchEventFilter$DoAction;
.super Ljava/lang/Enum;
.source "TouchEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/view/TouchEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DoAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/view/TouchEventFilter$DoAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/view/TouchEventFilter$DoAction;

.field public static final enum DO_IGNORE:Lcom/lge/view/TouchEventFilter$DoAction;

.field public static final enum DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

.field public static final enum DO_SPLIT:Lcom/lge/view/TouchEventFilter$DoAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/lge/view/TouchEventFilter$DoAction;

    const-string v1, "DO_NOTHING"

    invoke-direct {v0, v1, v2}, Lcom/lge/view/TouchEventFilter$DoAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    new-instance v0, Lcom/lge/view/TouchEventFilter$DoAction;

    const-string v1, "DO_IGNORE"

    invoke-direct {v0, v1, v3}, Lcom/lge/view/TouchEventFilter$DoAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/view/TouchEventFilter$DoAction;->DO_IGNORE:Lcom/lge/view/TouchEventFilter$DoAction;

    new-instance v0, Lcom/lge/view/TouchEventFilter$DoAction;

    const-string v1, "DO_SPLIT"

    invoke-direct {v0, v1, v4}, Lcom/lge/view/TouchEventFilter$DoAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/view/TouchEventFilter$DoAction;->DO_SPLIT:Lcom/lge/view/TouchEventFilter$DoAction;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/view/TouchEventFilter$DoAction;

    sget-object v1, Lcom/lge/view/TouchEventFilter$DoAction;->DO_NOTHING:Lcom/lge/view/TouchEventFilter$DoAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/view/TouchEventFilter$DoAction;->DO_IGNORE:Lcom/lge/view/TouchEventFilter$DoAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/view/TouchEventFilter$DoAction;->DO_SPLIT:Lcom/lge/view/TouchEventFilter$DoAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/view/TouchEventFilter$DoAction;->$VALUES:[Lcom/lge/view/TouchEventFilter$DoAction;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/view/TouchEventFilter$DoAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Lcom/lge/view/TouchEventFilter$DoAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/view/TouchEventFilter$DoAction;

    return-object v0
.end method

.method public static values()[Lcom/lge/view/TouchEventFilter$DoAction;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/lge/view/TouchEventFilter$DoAction;->$VALUES:[Lcom/lge/view/TouchEventFilter$DoAction;

    invoke-virtual {v0}, [Lcom/lge/view/TouchEventFilter$DoAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/view/TouchEventFilter$DoAction;

    return-object v0
.end method
