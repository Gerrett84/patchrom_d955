.class public final enum Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;
.super Ljava/lang/Enum;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmcFailCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

.field public static final enum ATTACH_FAILED:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

.field public static final enum BARRED:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

.field public static final enum NONE:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

.field public static final enum PDN_FAILED:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

.field private static final sEmcFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 274
    new-instance v4, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    const-string v5, "NONE"

    invoke-direct {v4, v5, v6, v6}, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->NONE:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    .line 275
    new-instance v4, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    const-string v5, "PDN_FAILED"

    invoke-direct {v4, v5, v7, v7}, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->PDN_FAILED:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    .line 276
    new-instance v4, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    const-string v5, "ATTACH_FAILED"

    invoke-direct {v4, v5, v8, v8}, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->ATTACH_FAILED:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    .line 277
    new-instance v4, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    const-string v5, "BARRED"

    invoke-direct {v4, v5, v9, v9}, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->BARRED:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    .line 273
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->NONE:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    aput-object v5, v4, v6

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->PDN_FAILED:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    aput-object v5, v4, v7

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->ATTACH_FAILED:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    aput-object v5, v4, v8

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->BARRED:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    aput-object v5, v4, v9

    sput-object v4, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    .line 282
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->sEmcFailCauseMap:Ljava/util/HashMap;

    .line 283
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->values()[Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 284
    .local v1, efc:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->sEmcFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    .end local v1           #efc:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 289
    iput p3, p0, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->mCode:I

    .line 290
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;
    .locals 3
    .parameter "code"

    .prologue
    .line 297
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->sEmcFailCauseMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    .line 298
    .local v0, efc:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;
    if-nez v0, :cond_0

    .line 299
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->NONE:Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    .line 301
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;
    .locals 1
    .parameter "name"

    .prologue
    .line 273
    const-class v0, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->$VALUES:[Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;->mCode:I

    return v0
.end method
