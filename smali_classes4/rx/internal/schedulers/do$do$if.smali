.class Lrx/internal/schedulers/do$do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/do$do;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/schedulers/do$do;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/do$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/schedulers/do$do$if;->do:Lrx/internal/schedulers/do$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/do$do$if;->do:Lrx/internal/schedulers/do$do;

    invoke-virtual {v0}, Lrx/internal/schedulers/do$do;->do()V

    return-void
.end method
