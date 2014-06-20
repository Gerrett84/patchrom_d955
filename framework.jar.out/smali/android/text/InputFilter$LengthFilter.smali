.class public Landroid/text/InputFilter$LengthFilter;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    .line 80
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 84
    iget v2, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 86
    .local v1, keep:I
    if-gtz v1, :cond_0

    .line 87
    const-string v2, ""

    .line 110
    :goto_0
    return-object v2

    .line 88
    :cond_0
    sub-int v2, p3, p2

    if-lt v1, v2, :cond_1

    .line 89
    const/4 v2, 0x0

    goto :goto_0

    .line 91
    :cond_1
    add-int/2addr v1, p2

    .line 92
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    add-int/lit8 v1, v1, -0x1

    .line 95
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, -0x2

    if-lt v2, p2, :cond_2

    .line 96
    add-int/lit8 v2, v1, -0x2

    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 97
    .local v0, codePoint:I
    add-int/lit8 v2, v1, -0x2

    invoke-static {p1, v2}, Landroid/text/Layout;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    add-int/lit8 v1, v1, -0x2

    .line 101
    .end local v0           #codePoint:I
    :cond_2
    if-ne v1, p2, :cond_4

    .line 102
    const-string v2, ""

    goto :goto_0

    .line 104
    :cond_3
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, -0x1

    if-lt v2, p2, :cond_4

    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Landroid/text/Layout;->isDiacriticalMark(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    add-int/lit8 v1, v1, -0x1

    .line 106
    if-ne v1, p2, :cond_4

    .line 107
    const-string v2, ""

    goto :goto_0

    .line 110
    :cond_4
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method
