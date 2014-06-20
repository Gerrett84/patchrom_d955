.class Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "PowerSaveCheckBoxPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->onCheckBoxClicked()V

    .line 70
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->mTreeClickListener:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->access$200(Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;)Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;

    invoke-interface {v0, v1}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;->onTreeClick(Landroid/preference/Preference;)V

    .line 71
    return-void
.end method
