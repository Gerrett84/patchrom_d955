.class Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;
.super Ljava/lang/Object;
.source "WifiConnectionHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiConnectionHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListViewHolder"
.end annotation


# instance fields
.field ConnectionInfo:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;

.field mFirst_item:Landroid/widget/TextView;

.field mSecond_item:Landroid/widget/TextView;

.field mSsid:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
