.class public Lcom/qmuiteam/qmui/QMUILog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;
    }
.end annotation


# static fields
.field private static do:Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs case(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/QMUILog;->do:Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs do(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/QMUILog;->do:Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs for(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/QMUILog;->do:Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/QMUILog;->do:Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs new(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/QMUILog;->do:Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static try(Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/qmuiteam/qmui/QMUILog;->do:Lcom/qmuiteam/qmui/QMUILog$QMUILogDelegate;

    return-void
.end method
