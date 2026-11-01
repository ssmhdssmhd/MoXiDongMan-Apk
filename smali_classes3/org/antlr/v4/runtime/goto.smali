.class public abstract Lorg/antlr/v4/runtime/goto;
.super Lorg/antlr/v4/runtime/this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/goto$if;,
        Lorg/antlr/v4/runtime/goto$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/antlr/v4/runtime/this<",
        "Lorg/antlr/v4/runtime/Token;",
        "Lorg/antlr/v4/runtime/atn/new;",
        ">;"
    }
.end annotation


# static fields
.field private static final throw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/static;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public break:Landroid/support/v4/qc1;

.field public catch:Z

.field private class:Lorg/antlr/v4/runtime/goto$do;

.field public const:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/ParseTreeListener;",
            ">;"
        }
    .end annotation
.end field

.field public else:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

.field public final:I

.field public goto:Lorg/antlr/v4/runtime/TokenStream;

.field public super:Z

.field public final this:Landroid/support/v4/gn0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/goto;->throw:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/TokenStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/antlr/v4/runtime/this;-><init>()V

    .line 2
    new-instance v0, Lorg/antlr/v4/runtime/else;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/else;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/goto;->else:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    .line 3
    new-instance v0, Landroid/support/v4/gn0;

    invoke-direct {v0}, Landroid/support/v4/gn0;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/goto;->this:Landroid/support/v4/gn0;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v4/gn0;->switch(I)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/antlr/v4/runtime/goto;->catch:Z

    .line 6
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/goto;->throws(Lorg/antlr/v4/runtime/IntStream;)V

    return-void
.end method


# virtual methods
.method public A(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Landroid/support/v4/ql1;)V
    .locals 8

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/goto;->final:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/goto;->final:I

    .line 2
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getLine()I

    move-result v4

    .line 3
    invoke-interface {p1}, Lorg/antlr/v4/runtime/Token;->getCharPositionInLine()I

    move-result v5

    .line 4
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->try()Lorg/antlr/v4/runtime/ANTLRErrorListener;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    .line 5
    invoke-interface/range {v1 .. v7}, Lorg/antlr/v4/runtime/ANTLRErrorListener;->syntaxError(Lorg/antlr/v4/runtime/this;Ljava/lang/Object;IILjava/lang/String;Landroid/support/v4/ql1;)V

    return-void
.end method

.method public B(Landroid/support/v4/qc1;II)V
    .locals 1

    .line 1
    iget-object p3, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    .line 2
    iput-object p1, p3, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    .line 3
    iput p2, p3, Landroid/support/v4/vo1;->if:I

    .line 4
    iget-object p2, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v0, -0x1

    invoke-interface {p2, v0}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p2

    iput-object p2, p3, Landroid/support/v4/qc1;->case:Lorg/antlr/v4/runtime/Token;

    .line 5
    iput-object p1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    .line 6
    iget-object p2, p3, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    iput-object p2, p1, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    .line 7
    iget-boolean p2, p0, Lorg/antlr/v4/runtime/goto;->catch:Z

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1, p3}, Landroid/support/v4/qc1;->final(Landroid/support/v4/vo1;)Landroid/support/v4/vo1;

    .line 9
    :cond_0
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->M()V

    :cond_1
    return-void
.end method

.method public C(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public D()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/IntStream;->seek(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->else:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->reset(Lorg/antlr/v4/runtime/goto;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    .line 4
    iput v1, p0, Lorg/antlr/v4/runtime/goto;->final:I

    .line 5
    iput-boolean v1, p0, Lorg/antlr/v4/runtime/goto;->super:Z

    .line 6
    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/goto;->K(Z)V

    .line 7
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->this:Landroid/support/v4/gn0;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/do;->goto()V

    .line 8
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->this:Landroid/support/v4/gn0;

    invoke-virtual {v0, v1}, Landroid/support/v4/gn0;->switch(I)V

    .line 9
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/support/v4/extends;->goto()V

    :cond_1
    return-void
.end method

.method public F(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/goto;->catch:Z

    return-void
.end method

.method public G(Landroid/support/v4/qc1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    return-void
.end method

.method public H(Lorg/antlr/v4/runtime/ANTLRErrorStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/antlr/v4/runtime/goto;->else:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    return-void
.end method

.method public I(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/new;

    .line 2
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/atn/new;->synchronized()Lorg/antlr/v4/runtime/atn/goto;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 3
    instance-of p1, v0, Lorg/antlr/v4/runtime/atn/this;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lorg/antlr/v4/runtime/atn/this;

    invoke-direct {p1, p0}, Lorg/antlr/v4/runtime/atn/this;-><init>(Lorg/antlr/v4/runtime/goto;)V

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/this;->default(Landroid/support/v4/extends;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p1, v0, Lorg/antlr/v4/runtime/atn/this;

    if-eqz p1, :cond_1

    .line 6
    new-instance p1, Lorg/antlr/v4/runtime/atn/new;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->for()Landroid/support/v4/static;

    move-result-object v2

    iget-object v3, v0, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    invoke-virtual {v0}, Landroid/support/v4/extends;->else()Landroid/support/v4/ef1;

    move-result-object v0

    invoke-direct {p1, p0, v2, v3, v0}, Lorg/antlr/v4/runtime/atn/new;-><init>(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/static;[Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/ef1;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/this;->default(Landroid/support/v4/extends;)V

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object p1

    check-cast p1, Lorg/antlr/v4/runtime/atn/new;

    invoke-virtual {p1, v1}, Lorg/antlr/v4/runtime/atn/new;->p(Lorg/antlr/v4/runtime/atn/goto;)V

    return-void
.end method

.method public J(Lorg/antlr/v4/runtime/TokenStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    .line 2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->E()V

    .line 3
    iput-object p1, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    return-void
.end method

.method public K(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->class:Lorg/antlr/v4/runtime/goto$do;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/goto;->C(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/antlr/v4/runtime/goto;->class:Lorg/antlr/v4/runtime/goto$do;

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->class:Lorg/antlr/v4/runtime/goto$do;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/goto;->C(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lorg/antlr/v4/runtime/goto$do;

    invoke-direct {p1, p0}, Lorg/antlr/v4/runtime/goto$do;-><init>(Lorg/antlr/v4/runtime/goto;)V

    iput-object p1, p0, Lorg/antlr/v4/runtime/goto;->class:Lorg/antlr/v4/runtime/goto$do;

    .line 5
    :goto_0
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->class:Lorg/antlr/v4/runtime/goto$do;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/goto;->package(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    :goto_1
    return-void
.end method

.method public L(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p1, Lorg/antlr/v4/runtime/goto$if;->do:Lorg/antlr/v4/runtime/goto$if;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/goto;->package(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lorg/antlr/v4/runtime/goto$if;->do:Lorg/antlr/v4/runtime/goto$if;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/goto;->C(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    :goto_0
    return-void
.end method

.method public M()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/tree/ParseTreeListener;

    .line 2
    iget-object v2, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->enterEveryRule(Landroid/support/v4/qc1;)V

    .line 3
    iget-object v2, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {v2, v1}, Landroid/support/v4/qc1;->public(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/tree/ParseTreeListener;

    .line 3
    iget-object v2, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {v2, v1}, Landroid/support/v4/qc1;->return(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V

    .line 4
    iget-object v2, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->exitEveryRule(Landroid/support/v4/qc1;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public O(Landroid/support/v4/qc1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->this:Landroid/support/v4/gn0;

    invoke-virtual {v0}, Landroid/support/v4/gn0;->static()I

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/qc1;->case:Lorg/antlr/v4/runtime/Token;

    .line 3
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    .line 4
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5
    :goto_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    if-eq v1, p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->N()V

    .line 7
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    iget-object v1, v1, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    check-cast v1, Landroid/support/v4/qc1;

    iput-object v1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    .line 9
    :cond_1
    iput-object p1, v0, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    .line 10
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/goto;->catch:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1, v0}, Landroid/support/v4/qc1;->final(Landroid/support/v4/vo1;)Landroid/support/v4/vo1;

    :cond_2
    return-void
.end method

.method public a()Landroid/support/v4/static;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->const()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lorg/antlr/v4/runtime/goto;->throw:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/static;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Landroid/support/v4/default;

    invoke-direct {v2}, Landroid/support/v4/default;-><init>()V

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Landroid/support/v4/default;->case(Z)V

    .line 6
    new-instance v3, Lorg/antlr/v4/runtime/atn/ATNDeserializer;

    invoke-direct {v3, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;-><init>(Landroid/support/v4/default;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->for([C)Landroid/support/v4/static;

    move-result-object v2

    .line 7
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The current parser does not support an ATN with bypass alternatives."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract(Ljava/lang/String;ILandroid/support/v4/is0;)Landroid/support/v4/lc1;
    .locals 1

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/tree/pattern/if;

    invoke-direct {v0, p3, p0}, Lorg/antlr/v4/runtime/tree/pattern/if;-><init>(Landroid/support/v4/is0;Lorg/antlr/v4/runtime/goto;)V

    .line 2
    invoke-virtual {v0, p1, p2}, Lorg/antlr/v4/runtime/tree/pattern/if;->do(Ljava/lang/String;I)Landroid/support/v4/lc1;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/goto;->catch:Z

    return v0
.end method

.method public break()Landroid/support/v4/jc1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/new;

    .line 2
    instance-of v1, v0, Lorg/antlr/v4/runtime/atn/this;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/support/v4/jc1;

    check-cast v0, Lorg/antlr/v4/runtime/atn/this;

    invoke-direct {v1, v0}, Landroid/support/v4/jc1;-><init>(Lorg/antlr/v4/runtime/atn/this;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Landroid/support/v4/qc1;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    return-object v0
.end method

.method public continue()Lorg/antlr/v4/runtime/Token;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v1

    invoke-interface {v1}, Lorg/antlr/v4/runtime/IntStream;->consume()V

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-boolean v2, p0, Lorg/antlr/v4/runtime/goto;->catch:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_4

    .line 6
    :cond_2
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->else:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v1, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->inErrorRecoveryMode(Lorg/antlr/v4/runtime/goto;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/goto;->strictfp(Landroid/support/v4/qc1;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/qc1;->import(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/tree/ParseTreeListener;

    .line 10
    invoke-interface {v3, v1}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitErrorNode(Lorg/antlr/v4/runtime/tree/ErrorNode;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/goto;->volatile(Landroid/support/v4/qc1;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/qc1;->throw(Lorg/antlr/v4/runtime/tree/TerminalNode;)Lorg/antlr/v4/runtime/tree/TerminalNode;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/tree/ParseTreeListener;

    .line 14
    invoke-interface {v3, v1}, Lorg/antlr/v4/runtime/tree/ParseTreeListener;->visitTerminal(Lorg/antlr/v4/runtime/tree/TerminalNode;)V

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public d()Lorg/antlr/v4/runtime/Token;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/this;->if:Landroid/support/v4/extends;

    check-cast v0, Lorg/antlr/v4/runtime/atn/new;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lorg/antlr/v4/runtime/this;->if:Landroid/support/v4/extends;

    move-object v4, v3

    check-cast v4, Lorg/antlr/v4/runtime/atn/new;

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 4
    check-cast v3, Lorg/antlr/v4/runtime/atn/new;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    aget-object v3, v3, v2

    .line 5
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->native()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/antlr/v4/runtime/dfa/do;->else(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public f()Lorg/antlr/v4/runtime/ANTLRErrorStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->else:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    return-object v0
.end method

.method public finally()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    iget-object v1, v0, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    check-cast v1, Landroid/support/v4/qc1;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Landroid/support/v4/qc1;->final(Landroid/support/v4/vo1;)Landroid/support/v4/vo1;

    :cond_0
    return-void
.end method

.method public g()Landroid/support/v4/sn0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->for()Landroid/support/v4/static;

    move-result-object v0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->final()I

    move-result v1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->c()Landroid/support/v4/qc1;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/static;->new(ILandroid/support/v4/vo1;)Landroid/support/v4/sn0;

    move-result-object v0

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->getSourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenSource;->getTokenFactory()Lorg/antlr/v4/runtime/TokenFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic goto()Lorg/antlr/v4/runtime/IntStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->i()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    return-object v0
.end method

.method public h()Landroid/support/v4/sn0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/new;

    iget-object v0, v0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    .line 2
    iget-object v1, v0, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->final()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/finally;

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/static;->case(Landroid/support/v4/finally;)Landroid/support/v4/sn0;

    move-result-object v0

    return-object v0
.end method

.method public i()Lorg/antlr/v4/runtime/TokenStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->r()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    return-object v0
.end method

.method public implements(Landroid/support/v4/qc1;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/this;->extends(I)V

    .line 2
    iget-object p2, p0, Lorg/antlr/v4/runtime/goto;->this:Landroid/support/v4/gn0;

    invoke-virtual {p2, p4}, Landroid/support/v4/gn0;->switch(I)V

    .line 3
    iput-object p1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    .line 4
    iget-object p2, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p2

    iput-object p2, p1, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    .line 5
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->M()V

    :cond_0
    return-void
.end method

.method public instanceof(Landroid/support/v4/qc1;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lorg/antlr/v4/runtime/this;->extends(I)V

    .line 2
    iput-object p1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    .line 3
    iget-object p2, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object p2

    iput-object p2, p1, Landroid/support/v4/qc1;->try:Lorg/antlr/v4/runtime/Token;

    .line 4
    iget-boolean p1, p0, Lorg/antlr/v4/runtime/goto;->catch:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->finally()V

    .line 5
    :cond_0
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->M()V

    :cond_1
    return-void
.end method

.method public interface()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/this;->if:Landroid/support/v4/extends;

    check-cast v0, Lorg/antlr/v4/runtime/atn/new;

    iget-object v0, v0, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/antlr/v4/runtime/this;->if:Landroid/support/v4/extends;

    move-object v4, v3

    check-cast v4, Lorg/antlr/v4/runtime/atn/new;

    iget-object v4, v4, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 3
    check-cast v3, Lorg/antlr/v4/runtime/atn/new;

    iget-object v3, v3, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    aget-object v3, v3, v1

    .line 4
    iget-object v4, v3, Lorg/antlr/v4/runtime/dfa/do;->do:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 6
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decision "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lorg/antlr/v4/runtime/dfa/do;->for:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->native()Lorg/antlr/v4/runtime/Vocabulary;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/antlr/v4/runtime/dfa/do;->else(Lorg/antlr/v4/runtime/Vocabulary;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public j(I)Landroid/support/v4/qc1;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/vo1;->try()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    check-cast v0, Landroid/support/v4/qc1;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/goto;->final:I

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/tree/ParseTreeListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->this:Landroid/support/v4/gn0;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/do;->class()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->this:Landroid/support/v4/gn0;

    invoke-virtual {v0}, Landroid/support/v4/gn0;->return()I

    move-result v0

    return v0
.end method

.method public n()Landroid/support/v4/qc1;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    return-object v0
.end method

.method public o(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->catch()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/goto;->q(Landroid/support/v4/vo1;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public package(Lorg/antlr/v4/runtime/tree/ParseTreeListener;)V
    .locals 1

    const-string v0, "listener"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public private(Ljava/lang/String;I)Landroid/support/v4/lc1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->r()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->r()Lorg/antlr/v4/runtime/TokenStream;

    move-result-object v0

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/support/v4/is0;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/support/v4/is0;

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/goto;->abstract(Ljava/lang/String;ILandroid/support/v4/is0;)Landroid/support/v4/lc1;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Parser can\'t discover a lexer to use"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public protected(Landroid/support/v4/qc1;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/support/v4/vo1;->else(I)V

    .line 2
    iget-boolean p2, p0, Lorg/antlr/v4/runtime/goto;->catch:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    if-eq p2, p1, :cond_0

    .line 3
    iget-object p2, p2, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    check-cast p2, Landroid/support/v4/qc1;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/support/v4/qc1;->abstract()V

    .line 5
    invoke-virtual {p2, p1}, Landroid/support/v4/qc1;->final(Landroid/support/v4/vo1;)Landroid/support/v4/vo1;

    .line 6
    :cond_0
    iput-object p1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    return-void
.end method

.method public public(Landroid/support/v4/vo1;I)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->this:Landroid/support/v4/gn0;

    invoke-virtual {p1}, Landroid/support/v4/gn0;->return()I

    move-result p1

    if-lt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q(Landroid/support/v4/vo1;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/vo1;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->class()[Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/vo1;->try()I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, "n/a"

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_0
    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_1
    iget-object p1, p1, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public r()Lorg/antlr/v4/runtime/TokenStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    return-object v0
.end method

.method public s()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->l()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/antlr/v4/runtime/goto$if;->do:Lorg/antlr/v4/runtime/goto$if;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/TokenFactory<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/TokenStream;->getTokenSource()Lorg/antlr/v4/runtime/TokenSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/antlr/v4/runtime/TokenSource;->setTokenFactory(Lorg/antlr/v4/runtime/TokenFactory;)V

    return-void
.end method

.method public strictfp(Landroid/support/v4/qc1;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;
    .locals 0

    .line 1
    new-instance p1, Landroid/support/v4/k80;

    invoke-direct {p1, p2}, Landroid/support/v4/k80;-><init>(Lorg/antlr/v4/runtime/Token;)V

    return-object p1
.end method

.method public synchronized()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/goto;->super:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/qc1;->case:Lorg/antlr/v4/runtime/Token;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->goto:Lorg/antlr/v4/runtime/TokenStream;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/antlr/v4/runtime/TokenStream;->LT(I)Lorg/antlr/v4/runtime/Token;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/qc1;->case:Lorg/antlr/v4/runtime/Token;

    .line 4
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->const:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->N()V

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    iget v0, v0, Landroid/support/v4/vo1;->if:I

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/this;->extends(I)V

    .line 6
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    iget-object v0, v0, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    check-cast v0, Landroid/support/v4/qc1;

    iput-object v0, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    return-void
.end method

.method public t(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final throws(Lorg/antlr/v4/runtime/IntStream;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/antlr/v4/runtime/TokenStream;

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/goto;->J(Lorg/antlr/v4/runtime/TokenStream;)V

    return-void
.end method

.method public transient(Landroid/support/v4/qc1;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->for()Landroid/support/v4/static;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/static;->for:[Landroid/support/v4/xo1;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/support/v4/finally;->if:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/antlr/v4/runtime/goto;->implements(Landroid/support/v4/qc1;III)V

    return-void
.end method

.method public u(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/new;

    iget-object v0, v0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    .line 2
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    .line 3
    iget-object v2, v0, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/this;->final()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/finally;

    .line 4
    invoke-virtual {v0, v2}, Landroid/support/v4/static;->case(Landroid/support/v4/finally;)Landroid/support/v4/sn0;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p1}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    const/4 v3, -0x2

    .line 6
    invoke-virtual {v2, v3}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    return v6

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 7
    iget v5, v1, Landroid/support/v4/vo1;->if:I

    if-ltz v5, :cond_3

    invoke-virtual {v2, v3}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8
    iget-object v2, v0, Landroid/support/v4/static;->do:Ljava/util/List;

    iget v5, v1, Landroid/support/v4/vo1;->if:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/finally;

    .line 9
    invoke-virtual {v2, v6}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object v2

    check-cast v2, Landroid/support/v4/ap1;

    .line 10
    iget-object v2, v2, Landroid/support/v4/ap1;->throw:Landroid/support/v4/finally;

    invoke-virtual {v0, v2}, Landroid/support/v4/static;->case(Landroid/support/v4/finally;)Landroid/support/v4/sn0;

    move-result-object v2

    .line 11
    invoke-virtual {v2, p1}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    .line 12
    :cond_2
    iget-object v1, v1, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    check-cast v1, Landroid/support/v4/qc1;

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v2, v3}, Landroid/support/v4/sn0;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v4

    :cond_4
    return v6
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/antlr/v4/runtime/goto;->super:Z

    return v0
.end method

.method public volatile(Landroid/support/v4/qc1;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/TerminalNode;
    .locals 0

    .line 1
    new-instance p1, Landroid/support/v4/t52;

    invoke-direct {p1, p2}, Landroid/support/v4/t52;-><init>(Lorg/antlr/v4/runtime/Token;)V

    return-object p1
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->class:Lorg/antlr/v4/runtime/goto$do;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x(I)Lorg/antlr/v4/runtime/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ql1;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, p1, :cond_1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/antlr/v4/runtime/goto;->super:Z

    .line 4
    :cond_0
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->else:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->reportMatch(Lorg/antlr/v4/runtime/goto;)V

    .line 5
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->continue()Lorg/antlr/v4/runtime/Token;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->else:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {p1, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->recoverInline(Lorg/antlr/v4/runtime/goto;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 7
    iget-boolean p1, p0, Lorg/antlr/v4/runtime/goto;->catch:Z

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 8
    iget-object p1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {p0, p1, v0}, Lorg/antlr/v4/runtime/goto;->strictfp(Landroid/support/v4/qc1;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/qc1;->import(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public y()Lorg/antlr/v4/runtime/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ql1;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getType()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->else:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v1, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->reportMatch(Lorg/antlr/v4/runtime/goto;)V

    .line 4
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->continue()Lorg/antlr/v4/runtime/Token;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/goto;->else:Lorg/antlr/v4/runtime/ANTLRErrorStrategy;

    invoke-interface {v0, p0}, Lorg/antlr/v4/runtime/ANTLRErrorStrategy;->recoverInline(Lorg/antlr/v4/runtime/goto;)Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    .line 6
    iget-boolean v1, p0, Lorg/antlr/v4/runtime/goto;->catch:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/antlr/v4/runtime/Token;->getTokenIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lorg/antlr/v4/runtime/goto;->break:Landroid/support/v4/qc1;

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/goto;->strictfp(Landroid/support/v4/qc1;Lorg/antlr/v4/runtime/Token;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/qc1;->import(Lorg/antlr/v4/runtime/tree/ErrorNode;)Lorg/antlr/v4/runtime/tree/ErrorNode;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final z(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/goto;->d()Lorg/antlr/v4/runtime/Token;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/antlr/v4/runtime/goto;->A(Lorg/antlr/v4/runtime/Token;Ljava/lang/String;Landroid/support/v4/ql1;)V

    return-void
.end method
