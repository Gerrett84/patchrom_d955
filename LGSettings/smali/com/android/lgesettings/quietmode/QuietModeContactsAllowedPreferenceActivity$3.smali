.class Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$3;
.super Ljava/lang/Object;
.source "QuietModeContactsAllowedPreferenceActivity.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->updateNoContactsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 667
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 668
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 669
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mEmptyText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$600(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3ff199999999999aL

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 670
    .local v1, textSize:I
    invoke-virtual {v0, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 672
    .end local v1           #textSize:I
    :cond_0
    return-object v0
.end method
