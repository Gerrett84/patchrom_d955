.class public Lcom/android/lgesettings/lge/Regulatory_mark;
.super Ljava/lang/Object;
.source "Regulatory_mark.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setRes_Regulatory(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "imgView"

    .prologue
    .line 32
    const-string v0, "/cust"

    const-string v1, "ro.lge.capp_cupss.rootdir"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const v0, 0x7f0202b7

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    const v0, 0x20204e3

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
