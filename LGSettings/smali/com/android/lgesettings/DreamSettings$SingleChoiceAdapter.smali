.class Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;
.super Landroid/widget/BaseAdapter;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleChoiceAdapter"
.end annotation


# instance fields
.field private final items:[Ljava/lang/String;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListItemLayout:I

.field final synthetic this$0:Lcom/android/lgesettings/DreamSettings;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/DreamSettings;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->this$0:Lcom/android/lgesettings/DreamSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/DreamSettings;->access$100(Lcom/android/lgesettings/DreamSettings;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0803a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/lgesettings/DreamSettings;->access$100(Lcom/android/lgesettings/DreamSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803a3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/lgesettings/DreamSettings;->access$100(Lcom/android/lgesettings/DreamSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0803a2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->items:[Ljava/lang/String;

    .line 88
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 89
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v3, 0x101005d

    invoke-virtual {p2, v1, v2, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0xd

    const v2, 0x1090012

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->mListItemLayout:I

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->items:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 105
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->items:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 118
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v1, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->mListItemLayout:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 124
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 125
    .local v0, text:Landroid/widget/CheckedTextView;
    iget-object v1, p0, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;->items:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 129
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    :cond_1
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 110
    const-string v1, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 113
    :cond_1
    return v0
.end method
