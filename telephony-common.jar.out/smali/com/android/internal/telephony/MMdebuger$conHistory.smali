.class Lcom/android/internal/telephony/MMdebuger$conHistory;
.super Ljava/lang/Object;
.source "MMdebuger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MMdebuger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "conHistory"
.end annotation


# instance fields
.field APNID:I

.field cid:I

.field cmdtype:I

.field curDay:I

.field curHour:I

.field curMinute:I

.field curMonth:I

.field curSecond:I

.field curYear:I

.field currRadioTech:I

.field serialnum:I

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
    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/MMdebuger$conHistory;->this$0:Lcom/android/internal/telephony/MMdebuger;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p2, p0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curYear:I

    .line 137
    iput p3, p0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curMonth:I

    .line 138
    iput p4, p0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curDay:I

    .line 139
    iput p5, p0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curHour:I

    .line 140
    iput p6, p0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curMinute:I

    .line 141
    iput p7, p0, Lcom/android/internal/telephony/MMdebuger$conHistory;->curSecond:I

    .line 142
    return-void
.end method
