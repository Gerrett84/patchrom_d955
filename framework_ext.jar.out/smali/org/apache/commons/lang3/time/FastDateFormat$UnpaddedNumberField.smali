.class Lorg/apache/commons/lang3/time/FastDateFormat$UnpaddedNumberField;
.super Ljava/lang/Object;
.source "FastDateFormat.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDateFormat$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnpaddedNumberField"
.end annotation


# instance fields
.field private final mField:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "field"

    .prologue
    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDateFormat$UnpaddedNumberField;->mField:I

    .line 1040
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1
    .parameter "buffer"
    .parameter "value"

    .prologue
    .line 1060
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 1061
    add-int/lit8 v0, p2, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1068
    :goto_0
    return-void

    .line 1062
    :cond_0
    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    .line 1063
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1064
    rem-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1066
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1
    .parameter "buffer"
    .parameter "calendar"

    .prologue
    .line 1053
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDateFormat$UnpaddedNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/time/FastDateFormat$UnpaddedNumberField;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 1054
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .prologue
    .line 1046
    const/4 v0, 0x4

    return v0
.end method
