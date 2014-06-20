.class public Lcom/android/lgesettings/quietmode/ByteLengthFilter;
.super Ljava/lang/Object;
.source "ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnDisplayListener;,
        Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mEdit:Landroid/widget/EditText;

.field protected mEncode:Ljava/lang/String;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mMax:I

.field private mOnDisplayMessage:Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnDisplayListener;

.field private mOnMaxLength:Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "ByteLengthFilter"

    sput-object v0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "max"

    .prologue
    .line 55
    const-string v0, "KSC5601"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "max"
    .parameter "encode"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mOnMaxLength:Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;

    .line 52
    iput-object v0, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mOnDisplayMessage:Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnDisplayListener;

    .line 59
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mContext:Landroid/content/Context;

    .line 60
    iput p2, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mMax:I

    .line 61
    iput-object p3, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mEncode:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private onDisplay(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mOnDisplayMessage:Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnDisplayListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mOnDisplayMessage:Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnDisplayListener;

    invoke-interface {v0, p1}, Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnDisplayListener;->onDisplay(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    return-void
.end method

.method private onMaxLength()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mOnMaxLength:Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mOnMaxLength:Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;

    invoke-interface {v0}, Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;->onMaxLength()V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 74
    .local v5, srcLen:I
    if-nez v5, :cond_0

    .line 124
    :goto_0
    return-object v3

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->getStringLength(Ljava/lang/String;)I

    move-result v4

    .line 78
    .local v4, sourceLength:I
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->getStringLength(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, destLength:I
    sget-object v6, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "destLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sourceLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-gez v4, :cond_1

    .line 82
    sget-object v6, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encoding error... source : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    if-gez v0, :cond_2

    .line 84
    sget-object v6, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encoding error... dest : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    iget v6, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mMax:I

    sub-int v2, v6, v0

    .line 88
    .local v2, keep:I
    sub-int v6, p6, p5

    if-lez v6, :cond_3

    .line 89
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->getStringLength(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v2, v6

    .line 92
    :cond_3
    sget-object v6, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMax = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mMax:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", keep = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-gtz v2, :cond_5

    .line 96
    iget-object v6, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v6, :cond_4

    .line 97
    iget-object v6, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 99
    :cond_4
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->onMaxLength()V

    .line 100
    const-string v3, ""

    goto/16 :goto_0

    .line 101
    :cond_5
    if-lt v2, v4, :cond_6

    .line 102
    invoke-direct {p0, p1}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->onDisplay(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 106
    :cond_6
    iget-object v6, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v6, :cond_7

    .line 107
    iget-object v6, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 109
    :cond_7
    add-int v1, v2, p2

    .line 110
    .local v1, idx:I
    if-le v1, v5, :cond_8

    .line 111
    move v1, v5

    .line 113
    :cond_8
    :goto_1
    if-le v1, p2, :cond_a

    .line 114
    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 115
    .local v3, ret:Ljava/lang/CharSequence;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->getStringLength(Ljava/lang/String;)I

    move-result v6

    if-lt v2, v6, :cond_9

    .line 117
    invoke-direct {p0, v3}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->onDisplay(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->onMaxLength()V

    goto/16 :goto_0

    .line 113
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 123
    .end local v3           #ret:Ljava/lang/CharSequence;
    :cond_a
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->onMaxLength()V

    .line 124
    const-string v3, ""

    goto/16 :goto_0
.end method

.method public getByteLength(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mEncode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 134
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getStringLength(Ljava/lang/String;)I
    .locals 1
    .parameter "str"

    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public setInputProperty(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 0
    .parameter "imm"
    .parameter "v"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 152
    check-cast p2, Landroid/widget/EditText;

    .end local p2
    iput-object p2, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mEdit:Landroid/widget/EditText;

    .line 153
    return-void
.end method

.method public setOnMaxLengthListener(Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;)V
    .locals 0
    .parameter "aListener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->mOnMaxLength:Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;

    .line 66
    return-void
.end method
