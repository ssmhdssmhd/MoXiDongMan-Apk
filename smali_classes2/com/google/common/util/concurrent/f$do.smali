.class Lcom/google/common/util/concurrent/f$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/f;->newProxy(Ljava/lang/Object;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Object;

.field public final synthetic for:Ljava/util/concurrent/TimeUnit;

.field public final synthetic if:J

.field public final synthetic new:Ljava/util/Set;

.field public final synthetic try:Lcom/google/common/util/concurrent/f;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/f;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/f$do;->try:Lcom/google/common/util/concurrent/f;

    iput-object p2, p0, Lcom/google/common/util/concurrent/f$do;->do:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/common/util/concurrent/f$do;->if:J

    iput-object p5, p0, Lcom/google/common/util/concurrent/f$do;->for:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lcom/google/common/util/concurrent/f$do;->new:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/google/common/util/concurrent/f$do$do;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/common/util/concurrent/f$do$do;-><init>(Lcom/google/common/util/concurrent/f$do;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/f$do;->try:Lcom/google/common/util/concurrent/f;

    iget-wide v2, p0, Lcom/google/common/util/concurrent/f$do;->if:J

    iget-object v4, p0, Lcom/google/common/util/concurrent/f$do;->for:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Lcom/google/common/util/concurrent/f$do;->new:Ljava/util/Set;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/f;->if(Lcom/google/common/util/concurrent/f;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
