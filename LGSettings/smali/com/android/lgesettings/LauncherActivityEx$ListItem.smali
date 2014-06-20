.class public Lcom/android/lgesettings/LauncherActivityEx$ListItem;
.super Ljava/lang/Object;
.source "LauncherActivityEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/LauncherActivityEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItem"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public extras:Landroid/os/Bundle;

.field public fFinalitem:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/lgesettings/LauncherActivityEx$IconResizer;)V
    .locals 2
    .parameter "pm"
    .parameter "resolveInfo"
    .parameter "resizer"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 61
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    .line 62
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 63
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    .line 68
    :cond_1
    if-eqz p3, :cond_2

    .line 69
    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 72
    :cond_2
    if-eqz v0, :cond_3

    .line 73
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->packageName:Ljava/lang/String;

    .line 74
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    .line 76
    :cond_3
    return-void
.end method
