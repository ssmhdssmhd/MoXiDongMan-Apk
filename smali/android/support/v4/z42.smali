.class public final synthetic Landroid/support/v4/z42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lorg/chromium/base/task/TaskRunnerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/task/TaskRunnerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/z42;->do:Lorg/chromium/base/task/TaskRunnerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z42;->do:Lorg/chromium/base/task/TaskRunnerImpl;

    invoke-virtual {v0}, Lorg/chromium/base/task/TaskRunnerImpl;->else()V

    return-void
.end method
