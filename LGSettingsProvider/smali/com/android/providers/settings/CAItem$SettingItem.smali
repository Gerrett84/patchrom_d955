.class public Lcom/android/providers/settings/CAItem$SettingItem;
.super Ljava/lang/Object;
.source "SettingsProviderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/CAItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingItem"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pId"
    .parameter "pValue"

    .prologue
    .line 851
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 852
    iput-object p1, p0, Lcom/android/providers/settings/CAItem$SettingItem;->id:Ljava/lang/String;

    .line 853
    iput-object p2, p0, Lcom/android/providers/settings/CAItem$SettingItem;->value:Ljava/lang/String;

    .line 854
    return-void
.end method
