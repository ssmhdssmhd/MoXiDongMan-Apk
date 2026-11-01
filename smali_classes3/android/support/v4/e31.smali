.class public abstract Landroid/support/v4/e31;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/support/v4/e31;->do:Ljava/util/concurrent/Executor;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Executor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public do()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/e31;->do:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public abstract if(IJI)V
.end method
