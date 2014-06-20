.class Lcom/android/lgesettings/vpn2/VpnDialog$7;
.super Landroid/widget/ArrayAdapter;
.source "VpnDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vpn2/VpnDialog;->loadCACertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vpn2/VpnDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vpn2/VpnDialog;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 598
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/lgesettings/vpn2/VpnDialog$7;->this$0:Lcom/android/lgesettings/vpn2/VpnDialog;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 601
    move-object v2, p2

    .line 602
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/android/lgesettings/vpn2/VpnDialog$7;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 604
    .local v0, mContext:Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 605
    .local v3, vi:Landroid/view/LayoutInflater;
    const v4, 0x1090008

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 607
    .end local v0           #mContext:Landroid/content/Context;
    .end local v3           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x1020014

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 609
    .local v1, tv:Landroid/widget/TextView;
    if-nez p1, :cond_1

    .line 610
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog$7;->this$0:Lcom/android/lgesettings/vpn2/VpnDialog;

    iget-object v4, v4, Lcom/android/lgesettings/vpn2/VpnDialog;->CAadApter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnDialog$7;->this$0:Lcom/android/lgesettings/vpn2/VpnDialog;

    iget v5, v5, Lcom/android/lgesettings/vpn2/VpnDialog;->mCurrentCAPos:I

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    :goto_0
    return-object v2

    .line 612
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnDialog$7;->this$0:Lcom/android/lgesettings/vpn2/VpnDialog;

    iget-object v4, v4, Lcom/android/lgesettings/vpn2/VpnDialog;->CAadApter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
