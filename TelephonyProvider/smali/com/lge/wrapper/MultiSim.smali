.class public Lcom/lge/wrapper/MultiSim;
.super Ljava/lang/Object;
.source "MultiSim.java"


# static fields
.field public static KEY_SUBSCRIPTION:Ljava/lang/String;

.field public static MAX_SUBSCRIPTION:I

.field public static MESSAGE_TYPE_INBOX_SUB1:I

.field public static MESSAGE_TYPE_INBOX_SUB2:I

.field public static MIN_SUBSCRIPTION:I

.field public static NOT_SUBSCRIPTION:I

.field public static SUBSCRIPTION1:I

.field public static SUBSCRIPTION2:I

.field public static SUBSCRIPTION3:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "subscription"

    sput-object v0, Lcom/lge/wrapper/MultiSim;->KEY_SUBSCRIPTION:Ljava/lang/String;

    .line 16
    const/4 v0, -0x1

    sput v0, Lcom/lge/wrapper/MultiSim;->NOT_SUBSCRIPTION:I

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/lge/wrapper/MultiSim;->SUBSCRIPTION1:I

    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/lge/wrapper/MultiSim;->SUBSCRIPTION2:I

    .line 19
    const/4 v0, 0x2

    sput v0, Lcom/lge/wrapper/MultiSim;->SUBSCRIPTION3:I

    .line 20
    sget v0, Lcom/lge/wrapper/MultiSim;->SUBSCRIPTION1:I

    sput v0, Lcom/lge/wrapper/MultiSim;->MIN_SUBSCRIPTION:I

    .line 21
    sget v0, Lcom/lge/wrapper/MultiSim;->SUBSCRIPTION2:I

    sput v0, Lcom/lge/wrapper/MultiSim;->MAX_SUBSCRIPTION:I

    .line 22
    const/4 v0, 0x7

    sput v0, Lcom/lge/wrapper/MultiSim;->MESSAGE_TYPE_INBOX_SUB1:I

    .line 23
    const/16 v0, 0x8

    sput v0, Lcom/lge/wrapper/MultiSim;->MESSAGE_TYPE_INBOX_SUB2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteMessageFromIcc(II)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "subscription"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public static getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
