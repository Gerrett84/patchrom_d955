.class Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference$1;
.super Ljava/lang/Object;
.source "CheckBoxAndSettingsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference$1;->this$0:Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference$1;->this$0:Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->onCheckBoxClicked()V

    .line 57
    return-void
.end method
