.class Lcom/android/lgesettings/vibratecreation/VibratePicker$1;
.super Lcom/android/lgesettings/vibratecreation/VibrateAdapter;
.source "VibratePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/vibratecreation/VibratePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    invoke-direct {p0}, Lcom/android/lgesettings/vibratecreation/VibrateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHeaderView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "caption"
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 94
    const-string v2, "VibratePicker"

    const-string v3, "getHeaderView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$1;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    invoke-virtual {v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040186

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    .local v0, mLinearLayout:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 97
    .local v1, result:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 98
    new-instance v2, Lcom/android/lgesettings/vibratecreation/VibratePicker$1$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/vibratecreation/VibratePicker$1$1;-><init>(Lcom/android/lgesettings/vibratecreation/VibratePicker$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-object v0
.end method
