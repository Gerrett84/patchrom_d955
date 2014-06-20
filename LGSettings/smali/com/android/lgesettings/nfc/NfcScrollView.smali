.class public Lcom/android/lgesettings/nfc/NfcScrollView;
.super Landroid/widget/ScrollView;
.source "NfcScrollView.java"


# instance fields
.field private FlagsOnce:Z

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/nfc/NfcScrollView;->FlagsOnce:Z

    .line 20
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcScrollView;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/nfc/NfcScrollView;->FlagsOnce:Z

    .line 31
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcScrollView;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/nfc/NfcScrollView;->FlagsOnce:Z

    .line 25
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcScrollView;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcScrollView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/nfc/NfcScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcScrollView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 46
    .local v0, diff:I
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "======="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-gtz v0, :cond_0

    .line 50
    iget-boolean v2, p0, Lcom/android/lgesettings/nfc/NfcScrollView;->FlagsOnce:Z

    if-eqz v2, :cond_0

    .line 52
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/lgesettings/nfc/NfcScrollView;->FlagsOnce:Z

    .line 53
    sget-object v2, Lcom/android/lgesettings/nfc/LGNfcEnabler;->dialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 58
    return-void
.end method
