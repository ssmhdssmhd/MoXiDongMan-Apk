.class public Lorg/apache/commons/lang3/concurrent/new$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Lorg/apache/commons/lang3/concurrent/new;",
        ">;"
    }
.end annotation


# instance fields
.field private do:Ljava/util/concurrent/ThreadFactory;

.field private for:Ljava/lang/String;

.field private if:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private new:Ljava/lang/Integer;

.field private try:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lorg/apache/commons/lang3/concurrent/new$if;)Ljava/util/concurrent/ThreadFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/new$if;->do:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public static synthetic for(Lorg/apache/commons/lang3/concurrent/new$if;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/new$if;->new:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic if(Lorg/apache/commons/lang3/concurrent/new$if;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/new$if;->for:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic new(Lorg/apache/commons/lang3/concurrent/new$if;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/new$if;->try:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic try(Lorg/apache/commons/lang3/concurrent/new$if;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/new$if;->if:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method


# virtual methods
.method public break()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/new$if;->do:Ljava/util/concurrent/ThreadFactory;

    .line 2
    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/new$if;->if:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3
    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/new$if;->for:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/new$if;->new:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/new$if;->try:Ljava/lang/Boolean;

    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/new$if;->case()Lorg/apache/commons/lang3/concurrent/new;

    move-result-object v0

    return-object v0
.end method

.method public case()Lorg/apache/commons/lang3/concurrent/new;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/concurrent/new;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/concurrent/new;-><init>(Lorg/apache/commons/lang3/concurrent/new$if;Lorg/apache/commons/lang3/concurrent/new$do;)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/new$if;->break()V

    return-object v0
.end method

.method public catch(Ljava/lang/Thread$UncaughtExceptionHandler;)Lorg/apache/commons/lang3/concurrent/new$if;
    .locals 1

    const-string v0, "Uncaught exception handler must not be null!"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/new$if;->if:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method public class(Ljava/util/concurrent/ThreadFactory;)Lorg/apache/commons/lang3/concurrent/new$if;
    .locals 1

    const-string v0, "Wrapped ThreadFactory must not be null!"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/new$if;->do:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method public else(Z)Lorg/apache/commons/lang3/concurrent/new$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/new$if;->try:Ljava/lang/Boolean;

    return-object p0
.end method

.method public goto(Ljava/lang/String;)Lorg/apache/commons/lang3/concurrent/new$if;
    .locals 1

    const-string v0, "Naming pattern must not be null!"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/new$if;->for:Ljava/lang/String;

    return-object p0
.end method

.method public this(I)Lorg/apache/commons/lang3/concurrent/new$if;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/new$if;->new:Ljava/lang/Integer;

    return-object p0
.end method
