.class Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;
.super Ljava/lang/Object;
.source "FrontTouchKeyTheme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/FrontTouchKeyTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeInfo"
.end annotation


# instance fields
.field public order:I

.field public packageName:Ljava/lang/String;

.field public preview:Landroid/graphics/drawable/Drawable;

.field public themeName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/lgesettings/lge/FrontTouchKeyTheme;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/lge/FrontTouchKeyTheme;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;->this$0:Lcom/android/lgesettings/lge/FrontTouchKeyTheme;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/lge/FrontTouchKeyTheme;Lcom/android/lgesettings/lge/FrontTouchKeyTheme$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/FrontTouchKeyTheme$ThemeInfo;-><init>(Lcom/android/lgesettings/lge/FrontTouchKeyTheme;)V

    return-void
.end method
