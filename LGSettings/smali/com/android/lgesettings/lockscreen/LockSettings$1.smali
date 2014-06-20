.class Lcom/android/lgesettings/lockscreen/LockSettings$1;
.super Ljava/lang/Object;
.source "LockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/LockSettings;->warnAddCity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/LockSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/LockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/LockSettings$1;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings$1;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/lgesettings/lockscreen/LockSettings;->mWeatherAnimState:I
    invoke-static {v0, v1}, Lcom/android/lgesettings/lockscreen/LockSettings;->access$302(Lcom/android/lgesettings/lockscreen/LockSettings;I)I

    .line 1099
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/LockSettings$1;->this$0:Lcom/android/lgesettings/lockscreen/LockSettings;

    #calls: Lcom/android/lgesettings/lockscreen/LockSettings;->launchAddCityActivity()V
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/LockSettings;->access$400(Lcom/android/lgesettings/lockscreen/LockSettings;)V

    .line 1100
    return-void
.end method
