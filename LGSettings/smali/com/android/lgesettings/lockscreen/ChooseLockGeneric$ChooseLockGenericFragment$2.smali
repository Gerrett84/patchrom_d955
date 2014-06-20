.class Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->attachPreferenceClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 529
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1, v0, p1}, Lcom/android/lgesettings/lockscreen/ChooseLockGeneric$ChooseLockGenericFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method
