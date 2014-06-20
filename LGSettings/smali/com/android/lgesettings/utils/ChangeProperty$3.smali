.class Lcom/android/lgesettings/utils/ChangeProperty$3;
.super Ljava/lang/Object;
.source "ChangeProperty.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/utils/ChangeProperty;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/utils/ChangeProperty;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/utils/ChangeProperty;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/lgesettings/utils/ChangeProperty$3;->this$0:Lcom/android/lgesettings/utils/ChangeProperty;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 118
    const-string v0, "sys.settings.country"

    iget-object v1, p0, Lcom/android/lgesettings/utils/ChangeProperty$3;->this$0:Lcom/android/lgesettings/utils/ChangeProperty;

    iget-object v1, v1, Lcom/android/lgesettings/utils/ChangeProperty;->setting_country:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "sys.settings.operator"

    iget-object v1, p0, Lcom/android/lgesettings/utils/ChangeProperty$3;->this$0:Lcom/android/lgesettings/utils/ChangeProperty;

    iget-object v1, v1, Lcom/android/lgesettings/utils/ChangeProperty;->setting_operator:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/lgesettings/utils/ChangeProperty$3;->this$0:Lcom/android/lgesettings/utils/ChangeProperty;

    iget-object v0, v0, Lcom/android/lgesettings/utils/ChangeProperty;->mChangedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target country : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty$3;->this$0:Lcom/android/lgesettings/utils/ChangeProperty;

    iget-object v2, v2, Lcom/android/lgesettings/utils/ChangeProperty;->setting_country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Target operator : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/utils/ChangeProperty$3;->this$0:Lcom/android/lgesettings/utils/ChangeProperty;

    iget-object v2, v2, Lcom/android/lgesettings/utils/ChangeProperty;->setting_operator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n set!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method
