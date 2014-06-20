.class public Lcom/android/lgesettings/nfc/NfcGuide;
.super Ljava/lang/Object;
.source "NfcGuide.java"


# instance fields
.field inf:Landroid/view/LayoutInflater;

.field private mAniImage:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field mView:Landroid/view/View;

.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcGuide;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->inf:Landroid/view/LayoutInflater;

    .line 26
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->inf:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->mView:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->mView:Landroid/view/View;

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->mAniImage:Landroid/widget/ImageView;

    .line 29
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->mView:Landroid/view/View;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->tv:Landroid/widget/TextView;

    .line 31
    invoke-static {}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->hasDirectBeam()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->tv:Landroid/widget/TextView;

    const v1, 0x7f08026e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->tv:Landroid/widget/TextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 35
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcGuide;->setAnimation()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/nfc/NfcGuide;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->mAniImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private setAnimation()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->mAniImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/lgesettings/nfc/NfcGuide$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/nfc/NfcGuide$1;-><init>(Lcom/android/lgesettings/nfc/NfcGuide;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/nfc/NfcGuide;->mView:Landroid/view/View;

    return-object v0
.end method
