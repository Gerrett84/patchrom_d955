.class public Lcom/android/providers/settings/CAItem_Test$SettingItem;
.super Ljava/lang/Object;
.source "SettingsProviderParser_Test.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/CAItem_Test;
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
    .line 882
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 883
    iput-object p1, p0, Lcom/android/providers/settings/CAItem_Test$SettingItem;->id:Ljava/lang/String;

    .line 884
    iput-object p2, p0, Lcom/android/providers/settings/CAItem_Test$SettingItem;->value:Ljava/lang/String;

    .line 885
    return-void
.end method
