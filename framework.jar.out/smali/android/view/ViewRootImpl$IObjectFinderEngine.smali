.class public interface abstract Landroid/view/ViewRootImpl$IObjectFinderEngine;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IObjectFinderEngine"
.end annotation


# static fields
.field public static final CMD:Ljava/lang/String; = "OFE_CMD"

.field public static final CMD_2:Ljava/lang/String; = "IOFE_CMD"

.field public static final DONE:Ljava/lang/String; = "DONE"

.field public static final FAIL:Ljava/lang/String; = "FAIL"

.field public static final IMAGE:Ljava/lang/String; = "__IMAGE__"

.field public static final INVALID:Ljava/lang/String; = "INVALID"


# virtual methods
.method public abstract execute(Landroid/view/View;Ljava/lang/String;Ljava/io/OutputStream;)Z
.end method

.method public abstract getVersion()J
.end method

.method public abstract sendString(Ljava/lang/String;Ljava/io/OutputStream;)V
.end method
