.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$2;
.super Ljava/lang/Object;
.source "WifiScreenHelp.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->initWidget(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$2;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020294

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    .local v0, drawFromPath:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    return-object v0
.end method
