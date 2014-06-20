.class public Lcom/android/lgesettings/nfc/NfcCheckBoxInner;
.super Landroid/preference/Preference;
.source "NfcCheckBoxInner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "parent"

    .prologue
    .line 39
    new-instance v0, Lcom/android/lgesettings/nfc/NfcGuide;

    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcCheckBoxInner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/lgesettings/nfc/NfcGuide;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, nfcGuide:Lcom/android/lgesettings/nfc/NfcGuide;
    invoke-virtual {v0}, Lcom/android/lgesettings/nfc/NfcGuide;->getView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
