.class Lcom/android/internal/telephony/MMdebuger$PDNLostHistory;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMdebuger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PDNLostHistory"
.end annotation


# instance fields
.field PDNIPv:I

.field PDNType:I

.field RadioTech:I

.field curDay:I

.field curHour:I

.field curMinute:I

.field curMonth:I

.field curSecond:I

.field curYear:I

.field final synthetic this$0:Lcom/android/internal/telephony/MMdebuger;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/MMdebuger;IIIIII)V
    .locals 0
    .parameter
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/MMdebuger$PDNLostHistory;->this$0:Lcom/android/internal/telephony/MMdebuger;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p2, p0, Lcom/android/internal/telephony/MMdebuger$PDNLostHistory;->curYear:I

    .line 116
    iput p3, p0, Lcom/android/internal/telephony/MMdebuger$PDNLostHistory;->curMonth:I

    .line 117
    iput p4, p0, Lcom/android/internal/telephony/MMdebuger$PDNLostHistory;->curDay:I

    .line 118
    iput p5, p0, Lcom/android/internal/telephony/MMdebuger$PDNLostHistory;->curHour:I

    .line 119
    iput p6, p0, Lcom/android/internal/telephony/MMdebuger$PDNLostHistory;->curMinute:I

    .line 120
    iput p7, p0, Lcom/android/internal/telephony/MMdebuger$PDNLostHistory;->curSecond:I

    .line 121
    return-void
.end method
