.class public Lcom/android/lgesettings/defaultapp/DefaultAppSettings$SortName;
.super Ljava/lang/Object;
.source "DefaultAppSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/defaultapp/DefaultAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/lgesettings/defaultapp/DefaultAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 240
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$SortName;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/lgesettings/defaultapp/DefaultAppInfo;Lcom/android/lgesettings/defaultapp/DefaultAppInfo;)I
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$SortName;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 240
    check-cast p1, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;

    .end local p1
    check-cast p2, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$SortName;->compare(Lcom/android/lgesettings/defaultapp/DefaultAppInfo;Lcom/android/lgesettings/defaultapp/DefaultAppInfo;)I

    move-result v0

    return v0
.end method
