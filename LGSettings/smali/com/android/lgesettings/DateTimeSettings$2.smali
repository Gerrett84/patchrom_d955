.class Lcom/android/lgesettings/DateTimeSettings$2;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DateTimeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/lgesettings/DateTimeSettings$2;->this$0:Lcom/android/lgesettings/DateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "dateFormat"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/lgesettings/DateTimeSettings$2;->this$0:Lcom/android/lgesettings/DateTimeSettings;

    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DateTimeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
