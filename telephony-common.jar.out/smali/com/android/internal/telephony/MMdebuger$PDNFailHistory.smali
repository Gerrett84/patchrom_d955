.class Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMdebuger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PDNFailHistory"
.end annotation


# instance fields
.field public LastFailPDNIPv:I

.field public LastFailPDNType:I

.field RequestRadioTech:I

.field ResponseRadioTech:I

.field curDay:I

.field curHour:I

.field curMinute:I

.field curMonth:I

.field curSecond:I

.field curYear:I

.field reason:I

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
    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->this$0:Lcom/android/internal/telephony/MMdebuger;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p2, p0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->curYear:I

    .line 79
    iput p3, p0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->curMonth:I

    .line 80
    iput p4, p0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->curDay:I

    .line 81
    iput p5, p0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->curHour:I

    .line 82
    iput p6, p0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->curMinute:I

    .line 83
    iput p7, p0, Lcom/android/internal/telephony/MMdebuger$PDNFailHistory;->curSecond:I

    .line 84
    return-void
.end method
