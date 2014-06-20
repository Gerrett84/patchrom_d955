.class Lcom/android/lgesettings/wifi/WifiAutoControl$1;
.super Ljava/lang/Object;
.source "WifiAutoControl.java"

# interfaces
.implements Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/WifiAutoControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiAutoControl;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiAutoControl;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl$1;->this$0:Lcom/android/lgesettings/wifi/WifiAutoControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "dateFormat"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl$1;->this$0:Lcom/android/lgesettings/wifi/WifiAutoControl;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
